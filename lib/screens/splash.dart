import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(),
          child: Image.asset(
            'assets/Gemini_Generated_Image_lh4rh1lh4rh1lh4r.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 120,
          left: 140,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Perfumee',
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ),
          ),
        )
      ]),
    );
  }
}
