import 'package:cashwise_app/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cashwise_app/Screen/home.dart';
import 'package:cashwise_app/widget/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cashwise_app/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
