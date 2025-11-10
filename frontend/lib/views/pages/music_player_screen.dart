import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  final AssetImage image;
  final String name;
  const MusicPlayerScreen({super.key, required this.image, required this.name});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  bool isFavorite = false;

  void _toggeleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage('assets/icons_project/Filter.png'),
              height: 20,
              width: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage('assets/icons_project/Playlist.png'),
              height: 20,
              width: 20,
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 7, 55, 100),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        color: Color.fromARGB(255, 7, 55, 100),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 600,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withOpacity(0.17),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image(
                        image: widget.image,
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            _toggeleFavorite();
                          },
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ProgressBar(
                      progress: Duration(milliseconds: 1000),
                      total: Duration(milliseconds: 100000),
                      onSeek: (value) => (),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shuffle),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.skip_previous),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.pause),
                          color: Colors.white,
                          iconSize: 50,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.skip_next),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.repeat),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
