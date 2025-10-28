import 'package:flutter/material.dart';
import 'package:vietsomni/views/card_widget/card_music_widget.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  int _selectedIndex = 0;
  final List<String> categories = ['All', 'Favorite', 'Relax', 'Sleep Sound'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 55, 100),
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/main'));
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
            child: Column(
              children: [
                SingleChildScrollView(
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
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,

                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CardMusic(
                      img: AssetImage('assets/img_project/Rectangle 12.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Music.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Rectangle 12.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Music.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Rectangle 12.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Music.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Rectangle 12.png'),
                      name: 'Moon Light',
                    ),
                    CardMusic(
                      img: AssetImage('assets/img_project/Music.png'),
                      name: 'Moon Light',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
