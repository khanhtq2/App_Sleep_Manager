import 'package:flutter/material.dart';
import 'package:vietsomni/main_layout.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Widget')),
      body: Center(child: Text('Stories Page Content Here')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when button is pressed
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainLayout()),
          );
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
