import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/regis_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffB81736),
                Color(0xff281537),
              ]),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 74,
                    width: 74,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Hello Welcome!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Container(
                    height: 48,
                    width: 300,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                        gradient: const LinearGradient(colors: [
                          Color(0xffB81736),
                          Color(0xff281537),
                        ])),
                    child: const Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Regiscreen(),
                        ));
                  },
                  child: Container(
                    height: 48,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Text(
                        "Login with Social Media",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                    Padding(
  padding: EdgeInsets.only(left: 100.0, right: 100.0), // Memberikan padding vertikal
  child: SizedBox(
    height: 50.0, // Mengatur tinggi baris
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Untuk menyeimbangkan ruang di antara gambar-gambar
      children: [
        Image(
          image: AssetImage('assets/images/ig.png'),
          height: 30,
          width: 30,
        ),
        Image(
          image: AssetImage('assets/images/tw.png'),
          height: 30,
          width: 30,
        ),
        Image(
          image: AssetImage('assets/images/fc.png'),
          height: 30,
          width: 30,
        ),
      ],
    ),
  ),
),

                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
