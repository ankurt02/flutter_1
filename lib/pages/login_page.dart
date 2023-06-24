// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = '';
  bool changeButton = false;
  // String loginText = 'Login';

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            // this will put all the content into a scrollable container, to compensate the difference in size of the screen,
            // not using the scrollview will result in bottom overflow error
            child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),

            // use sizedbox to create an empty space between elements
            SizedBox(
              height: 20,
            ),

            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  children: [
                    // TextFormField - UserName
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Username",
                      ),

                      // to print something dynamically on the screen, we use the below method
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),

                    // TextFormField - Password
                    TextFormField(
                      obscureText: true, // to hide the password
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Password",
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    // Make the login button
                    InkWell(
                      onTap: () async {
                        setState(() {
                          // Future.delayed(Duration(seconds: 2));
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: changeButton? 50 : 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(changeButton? 50 : 10)),
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                size: 40,
                                weight: 8, 
                                color: Color.fromARGB(255, 255, 255, 255),
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 22),
                              ),
                      ),
                    )

                    // Button "Login"
                    // ElevatedButton(
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(
                    //         fontSize: 20, fontWeight: FontWeight.bold),
                    //   ),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(120, 40),
                    //     alignment: Alignment.center,
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // ),
                  ],
                )),
          ],
        )));
  }
}
