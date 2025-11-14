import 'package:flutter/material.dart';
import 'package:vietsomni/views/pages/meditation_page.dart';
import 'package:vietsomni/views/pages/music_page.dart';
import 'package:vietsomni/views/pages/stories_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key, this.initialChip});
  final String? initialChip;
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String? _selectedChipName;

  // 1. Map lưu trữ nội dung theo tên chip
  final Map<String, Widget> _chipContent = {
    'Music': const MusicPage(),
    'Meditation': const MeditationPage(),
    'Stories': const StoriesPage(),
    'Podcasts': const MusicPage(),
    'News': const MusicPage(),
    'Natural Sounds': const MusicPage(),
  };

  @override
  void initState() {
    super.initState();
    // Đảm bảo có một chip được chọn ban đầu (mặc định hoặc từ navigation)
    if (widget.initialChip != null &&
        _chipContent.containsKey(widget.initialChip)) {
      _selectedChipName = widget.initialChip;
    } else {
      // Chọn mặc định là Music nếu không có chip nào được truyền hoặc tên chip không hợp lệ
      _selectedChipName = 'Music';
    }
  }

  // 2. Hàm xây dựng widget nội dung
  Widget _buildContent() {
    // Nếu _selectedChipName là null hoặc không có trong Map, trả về Container rỗng hoặc thông báo
    if (_selectedChipName == null ||
        !_chipContent.containsKey(_selectedChipName)) {
      return _chipContent['Music']!;
    }
    // Trả về Widget nội dung tương ứng
    return _chipContent[_selectedChipName]!;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> chipOptions = _chipContent.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Jost',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 55, 100),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hàng ChoiceChips
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12.0),
            color: Color.fromARGB(255, 7, 55, 100),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8.0,
                children: chipOptions.map((chipName) {
                  return ChoiceChip(
                    label: Text(chipName),

                    selected: _selectedChipName == chipName,
                    selectedColor: const Color.fromARGB(255, 7, 55, 100),
                    backgroundColor: Color.fromARGB(255, 7, 55, 100),
                    side: BorderSide.none,
                    showCheckmark: false,
                    labelStyle: TextStyle(
                      color: _selectedChipName == chipName
                          ? Colors.white
                          : const Color.fromARGB(221, 120, 120, 120),
                      fontFamily: 'Jost',
                      fontSize: _selectedChipName == chipName ? 20 : 16,
                      decoration: _selectedChipName == chipName
                          ? TextDecoration.underline
                          : null,
                      decorationThickness: 2,
                      decorationColor: Colors.white,
                    ),
                    onSelected: (bool selected) {
                      setState(() {
                        // Khi chọn, đặt _selectedChipName = tên chip đó
                        _selectedChipName = selected ? chipName : null;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),

          // 3. Hiển thị Nội dung Tương ứng
          Expanded(
            child:
                _buildContent(), // Nội dung sẽ tự động thay đổi khi _selectedChipName đổi
          ),
        ],
      ),
    );
  }
}
