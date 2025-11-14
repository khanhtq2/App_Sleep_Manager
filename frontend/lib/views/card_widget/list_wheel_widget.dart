import 'package:flutter/material.dart';

class ListWheelWidget extends StatefulWidget {
  final int itemCount;
  const ListWheelWidget({super.key, required this.itemCount});

  @override
  State<ListWheelWidget> createState() => _ListWheelWidgetState();
}

class _ListWheelWidgetState extends State<ListWheelWidget> {
  late final List<String> items = List.generate(
    widget.itemCount,
    (index) => index.toString(),
  );
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 50,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 60.0,
        diameterRatio: 1.5,
        perspective: 0.006,
        physics: const FixedExtentScrollPhysics(),
        onSelectedItemChanged: (value) => setState(() {
          _selectedIndex = value;
        }),
        childDelegate: ListWheelChildLoopingListDelegate(
          children: List.generate(items.length, (index) {
            return Opacity(
              opacity: _selectedIndex == index ? 1.0 : 0.5,
              child: Container(
                height: 60.0,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: _selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
