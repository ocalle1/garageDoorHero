import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final List<String> videos;

  const VideoPlayerScreen({super.key, required this.videos});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late List<VideoPlayerController> _controllers;
  late List<Future<void>> _inits;

  @override
  void initState() {
    super.initState();

    _controllers = widget.videos
        .map((path) => VideoPlayerController.asset(path))
        .toList();

    _inits = _controllers.map((c) {
      return c.initialize().then((_) async {
        await c.setVolume(0);
        await c.setLooping(true);
        await c.play();
      });
    }).toList();
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait(_inits),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Row(
            children: List.generate(_controllers.length, (i) {
              final c = _controllers[i];

              return Expanded(
                child: AspectRatio(
                  aspectRatio: c.value.aspectRatio,
                  child: VideoPlayer(c),
                ),
              );
            }),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
