import 'package:flutter/material.dart';

class AnniversaryCard extends StatelessWidget {
  const AnniversaryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF392D5A), // Background color of the card
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const Text(
                'Anniversary Wish',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Icon(Icons.star, color: Colors.amber, size: 20),
            ],
          ),
          const SizedBox(height: 16),
          // Avatars with cakes
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                _avatarWithCake(
                    'https://randomuser.me/api/portraits/women/44.jpg'),
                const SizedBox(width: 10),
                _avatarWithCake(
                    'https://randomuser.me/api/portraits/men/32.jpg'),
                const SizedBox(width: 10),
                _avatarWithCake(
                    'https://randomuser.me/api/portraits/men/32.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Total Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              Container(
                width: 1,
                height: 20,
                color: Colors.white70,
              ),
              Text(
                '3',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 1,
                height: 20,
                color: Colors.white70,
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Birthday Wishing Button
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                // Add your action here
              },
              icon: Transform.rotate(
                angle: -45 * 3.1415927 / 180,
                child: const Icon(Icons.send, color: Colors.white, size: 18),
              ),
              label: const Text(
                'Anniversary Wishing',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6A4FCC), // Button background
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget for Avatar with Cake Icon
  Widget _avatarWithCake(String avatarUrl) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 30,
        ),
        // Positioned(
        //   top: -2,
        //   right: -2,
        //   child: Container(
        //     decoration: const BoxDecoration(
        //       // color: Colors.white,
        //       shape: BoxShape.circle,
        //     ),
        //     padding: const EdgeInsets.all(2),
        //     child: const Icon(
        //       Icons.cake,
        //       color: Colors.pink,
        //       size: 16,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
