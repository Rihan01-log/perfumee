import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(100),
            CircleAvatar(
              radius: 60,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit),
            ),
            Gap(40),
            
          ],
        ),
      ),
    );
  }
}
