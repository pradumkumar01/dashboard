import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: const Color.fromARGB(255, 25, 87, 196),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Prevent overflow in smaller screens
          children: [
            Text('All Projects',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            SizedBox(height: 20),
            Card(
              color: const Color.fromARGB(255, 247, 93, 82),
              child: ListTile(
                leading: Icon(Icons.task, color: Colors.blue),
                title: Text(
                  'Technology behind the Blockchain',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  'See project details',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 57, 119, 226),
              child: ListTile(
                leading: Icon(Icons.task, color: Colors.blue),
                title: Text(
                  'Technology behind the Blockchain',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  'See project details',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 57, 119, 226),
              child: ListTile(
                leading: Icon(Icons.task, color: Colors.blue),
                title: Text(
                  'Technology behind the Blockchain',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  'See project details',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
