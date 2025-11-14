import 'package:flutter/material.dart';

class TimeCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const TimeCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 370,
      height: 59,
      decoration: BoxDecoration(
        color: Color.fromRGBO(49, 48, 80, 100),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Icon(Icons.edit, color: Colors.white, size: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.white, size: 10),
                iconSize: 10,
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(Size(10, 10)),
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 20),
              SizedBox(width: 10),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 15)),
              Spacer(),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
