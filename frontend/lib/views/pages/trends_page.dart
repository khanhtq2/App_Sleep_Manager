import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../card_widget/bar_chart_widget.dart';

class TrendsPage extends StatefulWidget {
  const TrendsPage({super.key});

  @override
  State<TrendsPage> createState() => _TrendsPageState();
}

class _TrendsPageState extends State<TrendsPage> {
  int _selectedIndex = 0;

  // Các danh mục để lựa chọn
  final List<String> categories = ['Days', 'Weeks', 'Months', 'All'];

  // Dữ liệu mẫu cho biểu đồ cột
  final List<Map<String, dynamic>> data = [
    {'x': 0, 'y': 55.0}, // Thứ Hai
    {'x': 1, 'y': 70.0}, // Thứ Ba
    {'x': 2, 'y': 85.5}, // Thứ Tư
    {'x': 3, 'y': 90.0}, // Thứ Năm
    {'x': 4, 'y': 79.0}, // Thứ Sáu
    {'x': 5, 'y': 88.0}, // Thứ Bảy
    {'x': 6, 'y': 92.0}, // Chủ Nhật
  ];

  // Hàm tính giá trị trung bình Y
  double calculateAVGY() {
    if (data.isEmpty) return 0.0;
    double totalY = data.fold(0.0, (sum, item) => sum + (item['y'] as double));

    // Tính trung bình
    return totalY / data.length;
  }

  // Hàm tạo danh sách BarChartGroupData từ dữ liệu
  List<BarChartGroupData> chartGroups() {
    const double barWidth = 16;
    return data
        .map(
          (item) => BarChartGroupData(
            x: item['x'] as int,
            barRods: [
              BarChartRodData(
                toY: item['y'] as double,
                color: Colors.blue,
                width: barWidth,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
        )
        .toList();
  }

  // Hàm tạo nhãn (label) cho trục X
  Widget getBottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'T2';
        break;
      case 1:
        text = 'T3';
        break;
      case 2:
        text = 'T4';
        break;
      case 3:
        text = 'T5';
        break;
      case 4:
        text = 'T6';
        break;
      case 5:
        text = 'T7';
        break;
      case 6:
        text = 'CN';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 2,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trends'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Jost',
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 7, 55, 100),

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (i) {
                final isSelected = _selectedIndex == i;
                return Padding(
                  padding: EdgeInsetsGeometry.all(8),
                  child: ChoiceChip(
                    label: Text(
                      categories[i],
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    selected: isSelected,
                    onSelected: (bool selected) => {
                      setState(() {
                        _selectedIndex = i;
                      }),
                    },
                    backgroundColor: Color.fromARGB(255, 125, 112, 207),
                    selectedColor: const Color(0xFF3A355C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      side: BorderSide(color: Colors.white24),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: const BoxDecoration(color: Color.fromARGB(255, 7, 55, 100)),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            children: [
              BarChartWidget(
                title: 'Sleep Score',
                subtitle:
                    'Your average sleep score for the last 7 days is ${calculateAVGY().toStringAsFixed(1)}.',
                chartGroups: chartGroups(),
                calculateAVGY: calculateAVGY,
                getBottomTitles: getBottomTitles,
              ),
              BarChartWidget(
                title: 'Sleep duration',
                subtitle:
                    'Your average sleep duration for the last 7 days is 7.5 hours.',
                chartGroups: chartGroups(),
                calculateAVGY: calculateAVGY,
                getBottomTitles: getBottomTitles,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
