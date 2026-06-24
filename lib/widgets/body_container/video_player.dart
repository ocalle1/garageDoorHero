import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;

  late Future<void> _initVideo1;
  late Future<void> _initVideo2;

  @override
  void initState() {
    super.initState();

    _controller1 = VideoPlayerController.asset(
      'assets/videos/container3/video1_web.mp4',
    );

    _controller2 = VideoPlayerController.asset(
      'assets/videos/container3/video2_web.mp4',
    );

    _initVideo1 = _controller1.initialize().then((_) async {
      await _controller1.setVolume(0);
      await _controller1.setLooping(true);
      await _controller1.play();
    });

    _initVideo2 = _controller2.initialize().then((_) async {
      await _controller2.setVolume(0);
      await _controller2.setLooping(true);
      await _controller2.play();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([_initVideo1, _initVideo2]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: _controller1.value.aspectRatio,
                  child: VideoPlayer(_controller1),
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: AspectRatio(
                  aspectRatio: _controller2.value.aspectRatio,
                  child: VideoPlayer(_controller2),
                ),
              ),
            ],
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
