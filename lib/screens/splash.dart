import 'package:flutter/material.dart';
import 'package:perfumee/screens/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (cts)=>const Login()));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Image.asset(
            'assets/Gemini_Generated_Image_lh4rh1lh4rh1lh4r.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
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
