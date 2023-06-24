// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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

                    // Button "Login"
                    ElevatedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(120, 40),
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  ],
                )
            ),
          ],
        )
      )
    );
  }
}
