import 'package:flutter/material.dart';
import 'package:cashwise_app/screen/info_card.dart';
import 'package:cashwise_app/profile.dart';

// our data
const url = "825210093";
const email = "felix.825210093@stu.untar.ac.id";
const phone = "+62 877-3148-4745";
const location = "Jakarta";

class felix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff368983),
          title: const Text("Felix Kabonero Tanlimhuijaya"),
        ),
        backgroundColor: Color.fromARGB(255, 47, 125, 121),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/kabo.jpg'),
              ),
              Text(
                "Felix Kabonero Tanlimhuijaya",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(text: url, icon: Icons.web, onPressed: () async {}),
              InfoCard(
                  text: location,
                  icon: Icons.location_city,
                  onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            ],
          ),
        ));
  }
}
