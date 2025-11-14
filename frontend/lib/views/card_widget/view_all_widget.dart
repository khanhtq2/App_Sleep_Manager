import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  final Widget page;
  final String title;
  final Function(String) navigationToExplore;

  const ViewAll({
    super.key,
    required this.page,
    required this.title,
    required this.navigationToExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: const Color.fromARGB(255, 202, 187, 187),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Jost',
          ),
        ),
        TextButton.icon(
          onPressed: () {
            navigationToExplore(title);
          },
          label: Text('View all'),
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
