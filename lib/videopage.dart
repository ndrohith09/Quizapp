import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  // const VideoPage({Key? key}) : super(key: key);
  String langname;

  VideoPage(this.langname);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  late String assettoload;
  @override
  void initState() {
    if (widget.langname == "Ajanta Ellora") {
      assettoload = "http//sampleurl.mp4";
    } else if (widget.langname == "Fatehpur Sikri") {
      assettoload = "assets/videos/fatehpursikri.mp4";
    } else if (widget.langname == "Humayuns Tomb") {
      assettoload = "assets/videos/humayunstomb.mp4";
    } else if (widget.langname == "India Gate") {
      assettoload = "assets/videos/indiagate.mp4";
    } else if (widget.langname == "Mysore Palace") {
      assettoload = "assets/videos/mysorepalace.mp4";
    } else {
      assettoload = 'assets/videos/nalanthauni.mp4';
    }
    _controller = VideoPlayerController.network(assettoload);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  setasset() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.langname + ' Video'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 200, 8, 0),
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: 4 / 3,
                child: VideoPlayer(_controller),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // pause
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // play
              _controller.play();
            }
          });
        },
        // icon
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
