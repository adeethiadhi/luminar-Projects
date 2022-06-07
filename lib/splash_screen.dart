import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(Duration(seconds: 3));
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: ((context) => ScreenHome())));
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ScreenHome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/avatar.png',
              height: 200,
              width: 400,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Splash Screen',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          size: 20,
        ),
        title: const Text(
          'Demo App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: 400,
        height: 300,
        child: Image.network(
            'https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
      ),
    );
  }
}