import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key,
  required this.imagePath,
  required this.name,});

  final ImageProvider imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Menambahkan bayangan di sekitar card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Mengatur sudut card
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: imagePath,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 18, // Ukuran teks nama
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
