import 'package:flutter/material.dart';

class SetTimeCard extends StatelessWidget {
  final String title;
  final AssetImage icon;
  final String time;
  final Widget page;
  const SetTimeCard({
    super.key,
    required this.title,
    required this.icon,
    required this.time,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 52,
      decoration: BoxDecoration(
        color: Color(0xFF313050),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image(width: 15, height: 15, image: icon),
                  SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Jost',
                    ),
                  ),
                ],
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jost',
                ),
              ),
            ],
          ),
          SizedBox(width: 60),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 15,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page),
                  );
                },
                icon: Icon(Icons.mode_edit_outline, color: Colors.white),
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero, // bỏ khoảng trống
                  minimumSize: Size(10, 10), // thu nhỏ vùng bấm
                  tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // giảm vùng hiệu ứng
                  backgroundColor: Colors.transparent, // không nền
                  overlayColor: Colors.transparent, // không hiệu ứng khi nhấn
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
