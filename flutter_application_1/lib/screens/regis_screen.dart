import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/welcome_screen.dart';

class Regiscreen extends  StatelessWidget {
  const Regiscreen({super.key});

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
              Color(0xff281537),]),
            ),
            child: const Padding(
            padding: EdgeInsets.only(top: 60.0, left: 22), 
            child: Text('Create Your\nAccount', style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
            )
        ),
        Padding(
            padding: const EdgeInsets.only(top: 200), 
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40),
              ),
                color: Colors.white
              ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                             hintText: "Vaniya Apriandani",
                          hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.check, color: Colors.grey,),
                            label: Text('Full Name', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB81736),
                            ),)
                          ),
                        ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                             hintText: "vaniyaapriann@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.check, color: Colors.grey,),
                            label: Text('Gmail', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB81736),
                            ),)
                          ),
                        ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                             hintText: "vaniya123",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,),
                            label: Text('Password', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB81736),
                            ),)
                          ),
                        ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                             hintText: "vaniya123",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,),
                            label: Text('Confirm Password', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB81736),
                            ),)
                          ),
                        ),
                      ),
                      SizedBox(height: 54,),
                      GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder:(context) => WelcomeScreen(),));
                  },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(colors: [
                              Color(0xffB81736),
                              Color(0xff281537),
                            ])
                          ),
                          child: const Center(child: Text('SIGN UP', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),),
                        ),
                      ),
                     SizedBox(height: 60),
                      GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder:(context) => LoginScreen(),));
                  },
                        child: const Align(
                          alignment:Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Already have account?", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),),
                              Text("Sign in here", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),),
                            ],
                          ),
                        ),
                      )
                   ],
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}