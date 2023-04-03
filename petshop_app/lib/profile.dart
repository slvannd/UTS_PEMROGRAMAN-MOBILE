// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink.shade50,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: CircleAvatar(
                backgroundImage: AssetImage('Images/profile.jpg'),
                radius: 80,
              ),
            ),
            Text(
              "Silvia Ananda",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Acme",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "\nMahasiswa Semester 6 jurusan Informatika fakultas teknik Universitas Mulawarman",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
