import 'package:flutter/material.dart';

class TopCreatorsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: const Color.fromARGB(255, 25, 87, 196),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Top Creators',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Artworks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Rating',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text('@creator_1', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Text('1021', style: TextStyle(color: Colors.white)),
                  Flexible(
                    child: Slider(
                      value: 3,
                      min: 0,
                      max: 5,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text('@creator_1', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Text('1021', style: TextStyle(color: Colors.white)),
                  Flexible(
                    child: Slider(
                      value: 3,
                      min: 0,
                      max: 5,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text('@creator_1', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Text('1021', style: TextStyle(color: Colors.white)),
                  Flexible(
                    child: Slider(
                      value: 3,
                      min: 0,
                      max: 5,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text('@creator_1', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Text('1021', style: TextStyle(color: Colors.white)),
                  Flexible(
                    child: Slider(
                      value: 3,
                      min: 0,
                      max: 5,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
