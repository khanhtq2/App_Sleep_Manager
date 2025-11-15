import 'package:flutter/material.dart';
import 'package:vietsomni/views/card_widget/set_time_widget.dart';
import 'package:vietsomni/views/card_widget/time_card_widget.dart';
import 'package:vietsomni/views/pages/alarm_page.dart';
import 'package:vietsomni/views/pages/set_time_sleep_page.dart';

class SleepPage extends StatelessWidget {
  const SleepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sleep'),
        backgroundColor: Color.fromARGB(255, 7, 55, 100),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Jost',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
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
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              spacing: 10,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '08:30',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'PM',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Text(
              'Friday, November 11',
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Jost',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: Stack(
                alignment: AlignmentGeometry.topCenter,
                children: [
                  Container(
                    width: 305,
                    height: 305,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromRGBO(224, 204, 155, 0.6),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(255, 11, 53, 92),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(146, 253, 253, 0),
                            blurRadius: 70,
                            blurStyle: BlurStyle.normal,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons_project/Moon.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    child: Text(
                      'START',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jost',
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                SetTimeCard(
                  icon: AssetImage('assets/icons_project/Moon Sleep.png'),
                  time: '22 : 00',
                  title: 'Bedtime',
                  page: BedtimePage(),
                ),
                // Alarm
                SetTimeCard(
                  title: 'Alarm',
                  icon: AssetImage('assets/icons_project/Alarm.png'),
                  time: '04 : 00',
                  page: AlarmPage(),
                ),
              ],
            ),
            SizedBox(height: 10),
            TimeCardWidget(
              icon: Icons.music_note,
              title: 'Sleep Sound',
              subtitle: 'Beach',
            ),
          ],
        ),
      ),
    );
  }
}
