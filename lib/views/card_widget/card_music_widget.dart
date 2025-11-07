import 'package:flutter/material.dart';
import 'package:vietsomni/views/pages/music_player_screen.dart';

class CardMusic extends StatelessWidget {
  final AssetImage img;
  final String name;

  const CardMusic({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicPlayerScreen(image: img, name: name),
            ),
          ),
        },
        child: Ink.image(
          image: img,
          width: 176.4,
          height: 176.4,
          fit: BoxFit.cover,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Jost',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
