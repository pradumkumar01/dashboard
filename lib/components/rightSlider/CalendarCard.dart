import 'package:dashboard/Screens/Calender.dart';
import 'package:flutter/material.dart';

class CalendarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 4, 52, 136),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Calendar',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 10),
            Text(
              'General: 10:00 AM to 7:00 PM',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              color: const Color.fromARGB(255, 3, 55, 145),
              child: MonthCalendarApp(),
            )
          ],
        ),
      ),
    );
  }
}
