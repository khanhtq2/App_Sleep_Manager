import 'package:flutter/material.dart';
import 'package:vietsomni/views/user.dart';

class ProfilePage extends StatelessWidget {
  final User currentUser = User(
    name: 'John Doe',
    email: 'john.doe@example.com',
    phoneNumber: '0712345678',
    dateOfBirth: DateTime(1990, 5, 15),
    address: '123 Main St, City, Country',
  );
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 7, 55, 100),

        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Jost',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img_project/avatar.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 7, 55, 100),
              Color.fromARGB(255, 15, 32, 64),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InforCard(icon: Icons.person_rounded, text: currentUser.name),
            Divider(color: Colors.white24),
            InforCard(icon: Icons.email_rounded, text: currentUser.email),
            Divider(color: Colors.white24),
            InforCard(icon: Icons.phone_rounded, text: currentUser.phoneNumber),
            Divider(color: Colors.white24),
            InforCard(
              icon: Icons.cake_rounded,
              text:
                  '${currentUser.dateOfBirth.day}/${currentUser.dateOfBirth.month}/${currentUser.dateOfBirth.year}',
            ),
            Divider(color: Colors.white24),
            InforCard(icon: Icons.home_rounded, text: currentUser.address),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Setting',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.white24),
            InforCard(icon: Icons.help_rounded, text: 'FAQ', isSetting: true),
            Divider(color: Colors.white24),
            InforCard(
              icon: Icons.privacy_tip_rounded,
              text: 'Privacy Policy',
              isSetting: true,
            ),
            Divider(color: Colors.white24),
            InforCard(
              icon: Icons.description_rounded,
              text: 'Terms of Service',
              isSetting: true,
            ),
            Divider(color: Colors.white24),
            InforCard(
              icon: Icons.feedback_rounded,
              text: 'Feedback',
              isSetting: true,
            ),
          ],
        ),
      ),
    );
  }
}

class InforCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSetting;

  const InforCard({
    super.key,
    required this.icon,
    required this.text,
    this.isSetting = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(width: 16),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Jost',
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        if (isSetting)
          Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 16),
      ],
    );
  }
}
