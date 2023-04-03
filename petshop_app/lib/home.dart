// ignore_for_file: unused_local_variable, duplicate_ignore

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petshop_app/landingPage.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  Widget keluar() {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.topRight,
        child: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () => exit(0),
        ));
  }

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: <Color>[
              Colors.pink.shade100,
              Colors.pink.shade100,
            ])),
        child: Column(
          children: [
            keluar(),
            Container(
              padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
              child: const Image(
                image: AssetImage('images/petshop_logo.png'),
              ),
            ),
            Container(
              width: 200,
              height: 45,
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'Tap In Order',
                  style: TextStyle(fontFamily: 'Acme', fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const landingPage();
                  })));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
