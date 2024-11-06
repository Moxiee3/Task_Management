import 'package:flutter/material.dart';
import 'package:schedule_app/colors/color.dart';
import 'package:schedule_app/screen/schedule_man_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/spls.png"),
            const Center(
              child: Column(
                children: [
                  Text(
                    "Task Management &",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "To-Do List",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    textAlign: TextAlign.center,
                    "This productive tool is designed to\nhelp you better manage your task\nproject-wise conveniently",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              color: cardColor,
              elevation: 10,
              minWidth: 350,
              height: 60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScheduleManScreen(),
                  ),
                );
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
