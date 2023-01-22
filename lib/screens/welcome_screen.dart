import 'package:flutter/material.dart';

import 'package:login_password/constants.dart';
import 'package:login_password/screens/components/background.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool obscuretext = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 120.0,
                backgroundImage: AssetImage('assets/logotip.png'),
              ),
              const SizedBox(height: 40.0),
              Container(
                width: 320.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.black),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: 'Логин'),
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 320.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.black),
                ),
                child: TextField(
                  obscureText: obscuretext,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {});
                          obscuretext = !obscuretext;
                        },
                        child: Icon(obscuretext
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      icon: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: 'Пароль'),
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.blue,
                ),
                width: 320.0,
                height: 50.0,
                child: const Center(child: Text("Войти")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
