import 'package:flutter/material.dart';

class cardMusic extends StatelessWidget {
  final AssetImage img;
  final String name;

  const cardMusic({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => {},
        child: Ink.image(
          image: img,
          width: 152,
          height: 104.88,
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
                  shadows: [
                    Shadow(
                      color: Color(0xFF000000),
                      offset: Offset(0, -2),
                      blurRadius: 4,
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
