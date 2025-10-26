import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  final AssetImage img;
  final String name;
  final String time;

  const StoriesCard({
    super.key,
    required this.img,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.0,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF313050),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
          width: 207,
          height: 60,
          child: Row(
            spacing: 15.0,
            children: [
              SizedBox(
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image(image: img),
                ),
              ),
              SizedBox(
                width: 124,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.favorite, color: Colors.white, size: 15),
                      ],
                    ),
                    Row(
                      spacing: 15,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0x80FFFFFF),
                          ),
                          padding: EdgeInsets.all(2),

                          child: Text('Story'),
                        ),
                        Text(time, style: TextStyle(color: Color(0x80FFFFFF))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
