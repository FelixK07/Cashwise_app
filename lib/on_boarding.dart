import 'package:flutter/material.dart';
import 'login_screen.dart';

class On_Boarding extends StatelessWidget {
  const On_Boarding({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Onboarding(),
          ],
        ),
      ),
    );
  }
}

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: screenSize.width, // Lebar layar perangkat
          height: screenSize.height, // Tinggi layar perangkat
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.667, // Tinggi sesuai dengan perangkat Pixel 5
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenSize.width * -0.257, // Sesuaikan dengan perangkat Pixel 5
                        top: screenSize.height * -0.031, // Sesuaikan dengan perangkat Pixel 5
                        child: Container(
                          width: screenSize.width * 1.518, // Sesuaikan dengan perangkat Pixel 5
                          height: screenSize.width * 1.518, // Sesuaikan dengan perangkat Pixel 5
                          child: Stack(
                            children: [
                              Positioned(
                                left: screenSize.width * 0.323, // Sesuaikan dengan perangkat Pixel 5
                                top: screenSize.width * 0.323, // Sesuaikan dengan perangkat Pixel 5
                                child: Container(
                                  width: screenSize.width * 0.87, // Sesuaikan dengan perangkat Pixel 5
                                  height: screenSize.width * 0.87, // Sesuaikan dengan perangkat Pixel 5
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(
                                      side: BorderSide(width: 1, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: screenSize.width * 0.194, // Sesuaikan dengan perangkat Pixel 5
                                top: screenSize.width * 0.195, // Sesuaikan dengan perangkat Pixel 5
                                child: Container(
                                  width: screenSize.width * 1.168, // Sesuaikan dengan perangkat Pixel 5
                                  height: screenSize.width * 1.168, // Sesuaikan dengan perangkat Pixel 5
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(
                                      side: BorderSide(width: 1, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: screenSize.width * 1.518, // Sesuaikan dengan perangkat Pixel 5
                                  height: screenSize.width * 1.518, // Sesuaikan dengan perangkat Pixel 5
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(
                                      side: BorderSide(width: 1, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.134, // Sesuaikan dengan perangkat Pixel 5
                top: screenSize.height * 0.580, // Sesuaikan dengan perangkat Pixel 5
                child: SizedBox(
                  width: screenSize.width * 0.726, // Sesuaikan dengan perangkat Pixel 5
                  child: Text(
                    'Personalisasi Kebutuhan-Mu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF438883),
                      fontSize: screenSize.width * 0.086, // Sesuaikan dengan perangkat Pixel 5
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.067, // Sesuaikan dengan perangkat Pixel 5
                top: screenSize.height * 0.75, // Sesuaikan dengan perangkat Pixel 5
                child: Container(
                  width: screenSize.width * 0.862, // Sesuaikan dengan perangkat Pixel 5
                  height: screenSize.width * 0.151, // Sesuaikan dengan perangkat Pixel 5
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke HalamanLain saat tombol ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF68AEA9), // Warna latar belakang tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenSize.width * 0.097), // Sesuaikan dengan perangkat Pixel 5
                      ),
                    ),
                    child: Text(
                      'Mulai Lacak Keuanganmu!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.043, // Sesuaikan dengan perangkat Pixel 5
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.174, // Sesuaikan dengan perangkat Pixel 5
                top: screenSize.width * 0.200, // Sesuaikan dengan perangkat Pixel 5
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 270, // Sesuaikan dengan perangkat Pixel 5
                  height: 270, // Sesuaikan dengan perangkat Pixel 5
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/gambar1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


