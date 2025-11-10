import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'trends_page.dart';

// --- Dữ liệu Giả lập (Không đổi) ---
class SleepData {
  final double progress;
  final String duration;
  final String score;
  final Map<String, double> sleepStages;

  SleepData({
    required this.progress,
    required this.duration,
    required this.score,
    required this.sleepStages,
  });
}

final SleepData lastNightData = SleepData(
  progress: 0.75,
  duration: '7h 30m',
  score: '85',
  sleepStages: {
    'Deep Sleep': 1.5,
    'REM Sleep': 2.0,
    'Light Sleep': 3.0,
    'Awake': 1.0,
  },
);

// --- Widget Chính: StaticPage (StatefulWidget) ---
class StaticPage extends StatefulWidget {
  const StaticPage({super.key});

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
  String selectedDate = 'Sun, 21 Sep';
  final Color primaryDarkColor = const Color.fromARGB(255, 7, 55, 100);
  int touchedIndex = -1; // Biến trạng thái cho tương tác chạm biểu đồ

  // Màu sắc cho các giai đoạn giấc ngủ
  final Map<String, Color> stageColors = {
    'Deep Sleep': const Color.fromARGB(255, 1, 59, 249),
    'REM Sleep': const Color.fromARGB(255, 37, 86, 236),
    'Light Sleep': const Color.fromARGB(255, 29, 126, 206),
    'Awake': const Color.fromARGB(255, 87, 183, 239),
  };

  @override
  Widget build(BuildContext context) {
    // Tính tổng thời gian ngủ cho biểu đồ
    final double totalSleepTime = lastNightData.sleepStages.values.fold(
      0.0,
      (sum, item) => sum + item,
    );

    // --- Hàm phụ cục bộ (Local helper functions) ---

    // Hàm tạo các section cho biểu đồ Pie Chart
    List<PieChartSectionData> buildChartSections(
      SleepData data,
      double totalTime,
    ) {
      int i = -1;
      return data.sleepStages.entries.map((entry) {
        i++;
        final isTouched = i == touchedIndex;
        final fontSize = isTouched ? 18.0 : 14.0;
        final radius = isTouched ? 80.0 : 70.0;
        final widgetSize = isTouched ? 55.0 : 45.0;

        final double percentage = (entry.value / totalTime) * 100;
        final String title = '${percentage.toStringAsFixed(0)}%';

        return PieChartSectionData(
          color: stageColors[entry.key],
          value: entry.value,
          title: title,
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
          badgeWidget: isTouched
              ? _ChartBadge(entry.key, size: widgetSize)
              : null,
          badgePositionPercentageOffset: 0.98,
        );
      }).toList();
    }

    // Widget cho mục hướng dẫn màu sắc (Legend Item)
    Widget buildLegendItem({required Color color, required String text}) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontFamily: 'Roboto',
            ),
          ),
        ],
      );
    }

    // Widget chung cho các chỉ số chi tiết
    Widget buildMetricItem(String title, String value) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      );
    }

    // --- Bắt đầu BODY (Gộp code) ---

    return Scaffold(
      backgroundColor: primaryDarkColor,
      appBar: AppBar(
        actions: [
          // Nút Chọn Ngày
          TextButton(
            onPressed: () {
              // Logic chọn ngày
            },
            child: Row(
              children: [
                Text(
                  selectedDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          const Spacer(),
          // Nút Trends
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrendsPage()),
              );
            },
            child: const Text(
              'Trends',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 18,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
        backgroundColor: primaryDarkColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 7, 55, 100),
          image: DecorationImage(
            image: AssetImage('assets/img_project/Background.png'),
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 1. Điểm số Tổng hợp (Sleep Score Card)
              Center(
                child: Column(
                  children: [
                    Text(
                      lastNightData.score,
                      style: const TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w900,
                        color: Colors.lightGreenAccent,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const Text(
                      'Sleep Score',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Your sleep quality was Good.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.lightGreenAccent,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // 2. BIỂU ĐỒ TỶ LỆ GIAI ĐOẠN GIẤC NGỦ (Donut Chart)
              AspectRatio(
                aspectRatio: 0.8,
                child: Column(
                  // Đảm bảo Column bắt đầu từ đầu
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Tiêu đề Biểu đồ
                    const Text(
                      'Sleep Stages Distribution',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 15), // Khoảng cách nhỏ sau tiêu đề
                    // Biểu đồ Pie Chart (Chiếm phần lớn không gian còn lại)
                    Expanded(
                      child: PieChart(
                        PieChartData(
                          pieTouchData: PieTouchData(
                            touchCallback:
                                (FlTouchEvent event, pieTouchResponse) {
                                  setState(() {
                                    if (!event.isInterestedForInteractions ||
                                        pieTouchResponse == null ||
                                        pieTouchResponse.touchedSection ==
                                            null) {
                                      touchedIndex = -1;
                                      return;
                                    }
                                    touchedIndex = pieTouchResponse
                                        .touchedSection!
                                        .touchedSectionIndex;
                                  });
                                },
                          ),
                          borderData: FlBorderData(show: false),
                          sectionsSpace: 4,
                          centerSpaceRadius: 60,
                          sections: buildChartSections(
                            lastNightData,
                            totalSleepTime,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20), // Khoảng cách trước Legend
                    // Hướng dẫn màu sắc (Legend)
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: lastNightData.sleepStages.keys.map((stage) {
                        return buildLegendItem(
                          color: stageColors[stage] ?? Colors.white,
                          text: stage,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // 3. Tiêu đề và Các chỉ số Chi tiết
              const Text(
                'Detailed Metrics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              const Divider(color: Colors.white24, height: 25),

              buildMetricItem('Total Duration', lastNightData.duration),
              buildMetricItem(
                'Sleep Efficiency',
                '${(lastNightData.progress * 100).toInt()}%',
              ),
              buildMetricItem('Awakenings', '2 times'),
              buildMetricItem('Time in Bed', '8h 00m'),
              buildMetricItem('Sleep Latency', '15 mins'),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget nhỏ _ChartBadge (cần giữ lại bên ngoài class State)
class _ChartBadge extends StatelessWidget {
  const _ChartBadge(this.text, {required this.size});
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size / 2),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4),
        ],
      ),
      child: Center(
        child: Text(
          text.split(' ')[0],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
