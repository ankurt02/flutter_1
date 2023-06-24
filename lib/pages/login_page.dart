// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                      obscureText: true,
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
                      child: Text("Login"),
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        print("Hellor");  // this is printing the text in the terminal
                      },
                    ),
                  ],
                )),
          ],
        ));
  }
}
