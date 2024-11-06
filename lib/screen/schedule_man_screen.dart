import 'package:flutter/material.dart';
import 'package:schedule_app/colors/color.dart';
import 'package:schedule_app/screen/app_home_page.dart';
import 'package:schedule_app/screen/calendar.dart';

class ScheduleManScreen extends StatefulWidget {
  const ScheduleManScreen({super.key});

  @override
  State<ScheduleManScreen> createState() => _ScheduleManScreenState();
}

class _ScheduleManScreenState extends State<ScheduleManScreen> {
  int selectedIndex = 0;
  final List pages = [
    const AppHomePage(),
    const CalendarPage(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: kBackground,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_chart,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
            ),
            label: "",
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
