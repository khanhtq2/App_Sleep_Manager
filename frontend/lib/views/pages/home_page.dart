import 'package:flutter/material.dart';
import 'package:vietsomni/views/pages/set_time_sleep_page.dart';
import 'package:vietsomni/views/pages/alarm_page.dart';
import '../card_widget/view_all_widget.dart';
import 'package:vietsomni/views/pages/meditation_page.dart';
import '../card_widget/set_time_widget.dart';
import '../pages/music_page.dart';
import '../pages/stories_page.dart';
import '../card_widget/card_music_widget.dart';
import '../card_widget/card_stories_widget.dart';

class HomePage extends StatelessWidget {
  final Function(String) navigationToExplore;

  const HomePage({super.key, required this.navigationToExplore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: double.infinity,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Column(
                children: [
                  //Sleep Quality
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 231,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/img_project/Rectangle 41.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        //
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcom,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Jost',
                                  ),
                                ),
                                Text(
                                  'Sang Nguyen',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Jost',
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 50),

                        //
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 289,
                              child: Text(
                                '“Quality Sleep for a Quality Life”',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Jost',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5, width: double.infinity),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF313050),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Start Sleep',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Jost',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF313050),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Set Alarm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Jost',
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Bedtime
                            SetTimeCard(
                              icon: AssetImage(
                                'assets/icons_project/Moon Sleep.png',
                              ),
                              time: '22 : 00',
                              title: 'Bedtime',
                              page: BedtimePage(),
                            ),
                            // Alarm
                            SetTimeCard(
                              title: 'Alarm',
                              icon: AssetImage(
                                'assets/icons_project/Alarm.png',
                              ),
                              time: '04 : 00',
                              page: AlarmPage(),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),

                        //Music Bar
                        ViewAll(
                          page: MusicPage(),
                          title: "Music",
                          navigationToExplore: navigationToExplore,
                        ),

                        SizedBox(
                          height: 140,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              spacing: 15.0,
                              children: [
                                CardMusic(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 12.png',
                                  ),
                                  name: 'Moon Light',
                                ),
                                CardMusic(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 12.png',
                                  ),
                                  name: 'Moon Light',
                                ),
                                CardMusic(
                                  img: AssetImage(
                                    'assets/img_project/Music.png',
                                  ),
                                  name: 'Moon Light',
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Stories Bar
                        ViewAll(
                          page: StoriesPage(),
                          title: "Stories",
                          navigationToExplore: navigationToExplore,
                        ),

                        SizedBox(
                          height: 70,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              spacing: 15,
                              children: [
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Meditation Bar
                        ViewAll(
                          page: MeditationPage(),
                          title: "Meditation",
                          navigationToExplore: navigationToExplore,
                        ),

                        SizedBox(
                          height: 70,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              spacing: 15,
                              children: [
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                                StoriesCard(
                                  img: AssetImage(
                                    'assets/img_project/Rectangle 44.png',
                                  ),
                                  name: 'Lake Toba',
                                  time: '10 min',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 384,
                          height: 120,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter, // hướng gradient
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0x22FFF6F6), // màu đầu
                                Color(0x22999494), // màu cuối
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              spacing: 10,
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/icons_project/Frame 3.png',
                                      ),
                                      width: 25,
                                      height: 25,
                                    ),
                                    Text(
                                      'Sleep Tips',
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontFamily: 'Jost',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Try turning off your phone 30 minutes before going to bed to improve your sleep quality.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Jost',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
