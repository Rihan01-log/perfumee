import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/bottomnavigation/navigation.dart';

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
              const BoxDecoration(color: Color.fromARGB(255, 247, 124, 115)),
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
                      MaterialPageRoute(builder: (ctx) => const NavigatioPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(140, 40),
                    backgroundColor: Colors.blueAccent),
                label: const Text('Login'),
                icon: const Icon(Icons.home),
              ),
              const Text('Don\'t have any acoount '),
              const Gap(10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const NavigatioPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, minimumSize: const Size(140, 40)),
                child: const Text('Sign In'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
