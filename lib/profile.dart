import 'package:cashwise_app/profile_view.dart';
import 'package:cashwise_app/screen/alvin.dart';
import 'package:cashwise_app/screen/felix.dart';
import 'package:cashwise_app/screen/ribka.dart';
import 'package:flutter/material.dart';
import 'log_out.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  void logout() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff368983),
        title: const Text("CASHWISE"),
        actions: [
          IconButton(
            onPressed: () {
              // Lakukan pengecekan login di sini
              // Jika login berhasil, navigasi ke halaman selanjutnya
              // Contoh:

              // Jika kondisi login berhasil
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Log_out()), // Ganti NextScreen() dengan halaman selanjutnya setelah login
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman lain ketika card di-tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => alvin()),
                );
              },
              child: ProfileCard(
                imagePath: AssetImage('images/alvin.jpg'),
                name: "Alvin Nicolas Gunadi",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman lain ketika card di-tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => felix()),
                );
              },
              child: ProfileCard(
                imagePath: AssetImage('images/kabo.jpg'),
                name: "Felix Kabonero Tanlimhuijaya",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman lain ketika card di-tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ribka()),
                );
              },
              child: ProfileCard(
                imagePath: AssetImage('images/ribka.jpg'),
                name: "Ribka Suwardy",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
