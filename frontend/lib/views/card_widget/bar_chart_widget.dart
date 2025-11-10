import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartWidget extends StatelessWidget {
  final List<BarChartGroupData> chartGroups;
  final double Function() calculateAVGY;
  final Widget Function(double, TitleMeta) getBottomTitles;
  final String title;
  final String subtitle;
  const BarChartWidget({
    super.key,
    required this.chartGroups,
    required this.calculateAVGY,
    required this.getBottomTitles,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(60, 194, 0, 0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 129, 109, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/icons_project/message-circle-more.png',
                        width: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.white24),
                SizedBox(height: 8),
                SizedBox(
                  height: 200,
                  child: BarChart(
                    BarChartData(
                      // Dữ liệu biểu đồ
                      barGroups: chartGroups,

                      //cài giá trị max trục Y
                      maxY: 100,
                      barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                          getTooltipColor: (value) {
                            return const Color.fromARGB(255, 255, 255, 255);
                          },
                        ),
                      ),
                      // Vẽ đường trung bình
                      extraLinesData: ExtraLinesData(
                        horizontalLines: [
                          HorizontalLine(
                            y: calculateAVGY(), // --- SỬ DỤNG GIÁ TRUNG BÌNH TÍNH ĐƯỢC
                            color: const Color.fromARGB(255, 33, 112, 249),
                            strokeWidth: 2,
                            dashArray: [2, 2],
                          ),
                        ],
                      ),
                      // Thiết lập lưới và trục
                      borderData: FlBorderData(
                        show: true,
                        border: Border(
                          bottom: BorderSide(color: Colors.black26, width: 3),
                          left: BorderSide(
                            color: const Color.fromARGB(66, 0, 0, 0),
                            width: 3,
                          ),
                        ),
                      ),

                      // Thiết lập tiêu đề cho các trục
                      titlesData: FlTitlesData(
                        show: true,
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: getBottomTitles,
                            reservedSize: 20,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
