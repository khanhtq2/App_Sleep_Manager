import 'package:flutter/material.dart';
import '../pages/home_page.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Widget')),
      body: Center(child: Text('Music Page Content Here')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when button is pressed
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
