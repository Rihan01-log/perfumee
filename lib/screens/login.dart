import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/bottomnavigation/navigation.dart';
import 'package:perfumee/screens/homescreen.dart';
import 'package:perfumee/screens/signin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration:
              BoxDecoration(color: const Color.fromARGB(255, 247, 124, 115)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (ctx) => NavigatioPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(140, 40),
                    backgroundColor: Colors.blueAccent),
                label: Text('Login'),
                icon: Icon(Icons.home),
              ),
              Text('Don\'t have any acoount '),
              Gap(10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => NavigatioPage()));
                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, minimumSize: Size(140, 40)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
