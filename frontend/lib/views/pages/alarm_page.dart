import 'package:flutter/material.dart';
import '../card_widget/list_wheel_widget.dart';
import '../card_widget/time_card_widget.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 52, 95),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 7, 55, 100),
              Color.fromARGB(255, 15, 32, 64),
            ],
            stops: [0, 0.6],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.white,
                    height: 23,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ), // Đặt thickness để nhìn rõ hơn
                ),
                ListWheelWidget(itemCount: 24),
                SizedBox(width: 10),
                Text(
                  ' : ',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(width: 10),
                ListWheelWidget(itemCount: 60),
                const Expanded(
                  child: Divider(
                    color: Colors.white,
                    height: 23,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ), // Đặt thickness để nhìn rõ hơn
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Set Alarm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Jost',
                  ),
                ),
              ],
            ),

            TimeCardWidget(
              icon: Icons.bedtime_rounded,
              title: 'Sleep goals',
              subtitle: 'Get up early',
            ),
            TimeCardWidget(
              icon: Icons.av_timer_rounded,
              title: 'Repeat',
              subtitle: 'Everyday',
            ),
            TimeCardWidget(
              icon: Icons.music_note_rounded,
              title: 'Alarm sound',
              subtitle: 'Gentle alarm',
            ),
          ],
        ),
      ),
    );
  }
}
