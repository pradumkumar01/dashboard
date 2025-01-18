import 'package:flutter/material.dart';

class TopRattingProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 0, 10),
          child: Column(children: [
            Row(
              children: [
                Text(
                  "ETHEREUM 2.0",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  "Top Ratting \nProject ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Trending project and high ratting \nProject Created by team ",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(210, 53, 3, 141),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Learn More",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
