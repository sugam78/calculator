import 'dart:async';

import 'package:calculator/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),);
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: const Stack(
          children: [
            Center(
              child: Image(
                image: NetworkImage('https://thumbs.dreamstime.com/b/calculator-icon-outline-line-style-illustration-vector-web-98778928.jpg'),
                  fit: BoxFit.fill,
          ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'By Sugam Paudel',
                style: TextStyle(fontSize: 25,color: Colors.white),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
