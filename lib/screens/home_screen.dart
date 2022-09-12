import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBAr
      appBar: AppBar(
        title: const Text("Meet & Chat"),
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),

      // UI
      body: Column(
        children: [
          // Top Buttadd_circled_solidons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButtom(
                onTap: () {},
                iconData: CupertinoIcons.video_camera_solid,
                label: "New Meeting",
              ),
              HomeMeetingButtom(
                onTap: () {},
                iconData: CupertinoIcons.add_circled_solid,
                label: "Join Meeting",
              ),
              HomeMeetingButtom(
                onTap: () {},
                iconData: CupertinoIcons.calendar,
                label: "Schedule",
              ),
              HomeMeetingButtom(
                onTap: () {},
                iconData: CupertinoIcons.share,
                label: "Share Screen",
              ),
            ],
          ),

          // Create Or Join room
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meetings with just a click',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),

      // Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 13,
        selectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: "Meet & Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: "Meetings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
