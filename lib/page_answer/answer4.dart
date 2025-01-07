import 'package:flutter/material.dart';

class MyWidget4 extends StatelessWidget {
  const MyWidget4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Header Container (Blue)
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 40), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Picture
                ClipOval(
                  child: Image.network(
                    'https://images.pexels.com/photos/406014/pexels-photo-406014.jpeg?auto=compress&cs=tinysrgb&w=400', 
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8), // Spacing between the image and username
                // Username
                const Text(
                  'Mr.Good Doggo', 
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          
          // Data Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('doggo_d@protonmail.com'),
                  ],
                ),
                SizedBox(height: 16),
                // Phone Number
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('+123 456 7890'),
                  ],
                ),
                SizedBox(height: 16),
                // Address
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('1 sanamjan, nakonpratom, Thailand'),
                  ],
                ),
              ],
            ),
          ),
          
          // Action Buttons (Edit Profile and Logout)
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Edit Profile Button
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                    //primary: Colors.blue,
                  ),
                ),
                // Logout Button
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                    //primary: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
