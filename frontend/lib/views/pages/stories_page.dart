import 'package:flutter/material.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 55, 100),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Center(child: Text('Stories Page Content Here')),
    );
  }
}
