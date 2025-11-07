import 'package:flutter/material.dart';

import '../card_widget/view_all_widget.dart';

import 'package:vietsomni/views/pages/meditation_page.dart';

import '../card_widget/view_all_widget.dart';

import 'package:vietsomni/views/pages/meditation_page.dart';
import '../card_widget/View_All_widget.dart';

import '../pages/music_page.dart';
import '../pages/stories_page.dart';
import '../card_widget/card_music_widget.dart';
import '../card_widget/card_stories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 7, 55, 100),
              image: DecorationImage(
                image: AssetImage('assets/img_project/Background.png'),
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

                  SizedBox(height: 25, width: double.infinity),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column( 
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF313050),
                                fixedSize: Size(102, 28),
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
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF313050),
                                fixedSize: Size(102, 28),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Bedtime
                            Container(
                              width: 160,
                              height: 52,
                              decoration: BoxDecoration(
                                color: Color(0xFF313050),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image(
                                            width: 15,
                                            height: 15,
                                            image: AssetImage(
                                              'assets/icons_project/Moon Sleep.png',
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'Bedtime',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Jost',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '22 : 00',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Jost',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 65),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        iconSize: 10,
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.mode_edit_outline,
                                          color: Colors.white,
                                        ),
                                        style: IconButton.styleFrom(
                                          padding: EdgeInsets
                                              .zero, // bỏ khoảng trống
                                          minimumSize: Size(
                                            10,
                                            10,
                                          ), // thu nhỏ vùng bấm
                                          tapTargetSize: MaterialTapTargetSize
                                              .shrinkWrap, // giảm vùng hiệu ứng
                                          backgroundColor:
                                              Colors.transparent, // không nền
                                          overlayColor: Colors
                                              .transparent, // không hiệu ứng khi nhấn
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //Alarm
                            Container(
                              width: 160,
                              height: 52,
                              decoration: BoxDecoration(
                                color: Color(0xFF313050),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image(
                                            width: 15,
                                            height: 15,
                                            image: AssetImage(
                                              'assets/icons_project/Alarm.png',
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'Alarm',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Jost',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '04 : 00',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Jost',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 65),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        iconSize: 10,
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.mode_edit_outline,
                                          color: Colors.white,
                                        ),
                                        style: IconButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(10, 10),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          backgroundColor: Colors.transparent,
                                          overlayColor: Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),

                        //Music Bar
                        ViewAll(page: MusicPage(), title: "Music"),

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
                        ViewAll(page: StoriesPage(), title: "Stories"),

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
                        ViewAll(page: MeditationPage(), title: "Meditation"),

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
