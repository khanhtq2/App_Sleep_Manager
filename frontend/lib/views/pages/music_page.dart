import 'package:flutter/material.dart';
import 'package:vietsomni/views/card_widget/card_music_widget.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 7, 55, 100),
                Color.fromARGB(255, 15, 32, 64),
              ],
              stops: [0, 0.6],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,

                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                children: [
                  CardMusic(
                    img: AssetImage('assets/img_project/Rectangle 12.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Music.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Rectangle 12.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Music.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Rectangle 12.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Music.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Rectangle 12.png'),
                    name: 'Moon Light',
                  ),
                  CardMusic(
                    img: AssetImage('assets/img_project/Music.png'),
                    name: 'Moon Light',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
