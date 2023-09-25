// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl = "assets/images/naruto.jpeg";
    return Drawer(
      child: Container(
        color: Color.fromARGB(19, 177, 186, 202),
        child: ListView(

          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.white10),
                accountName: Text("Ankur Tiwary",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),  // this will only be for light theme, as textTheme in the theme widget is not working
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),), 
                accountEmail: Text("7083ankurt@gmail.com",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),  // this will only be for light theme, as textTheme in the theme widget is not working
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                ),
              )
            ),
            // Divider(thickness: 10,),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Icon(
                  
                  CupertinoIcons.profile_circled,
                  
                  // color: , // to add colors in the icons
                ),
              ),
              title: Padding(
              
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  "Profile",
                  // padding: EdgeInsets.zero,
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    color: Color.fromARGB(180, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    // fontFamily: GoogleFonts.josefinSans),
                  ),
                
                ),
              ),
            ),

            ListTile(
              // onTap: , // this can be used to navigate the screen on-tap
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Icon(
                  
                  CupertinoIcons.home,
                  
                  // color: , // to add colors in the icons
                ),
              ),
              title: Padding(
              
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  "Home",
                  // padding: EdgeInsets.zero,
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    color: Color.fromARGB(180, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    // fontFamily: GoogleFonts.josefinSans),
                  ),
                
                ),
              ),
            ),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Icon(
                  
                  CupertinoIcons.mail,
                  
                  // color: , // to add colors in the icons
                ),
              ),
              title: Padding(
              
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  "Mail",
                  // padding: EdgeInsets.zero,
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    color: Color.fromARGB(180, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    // fontFamily: GoogleFonts.josefinSans),
                  ),
                
                ),
              ),
            ),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Icon(
                  
                  CupertinoIcons.settings_solid,
                  
                  // color: , // to add colors in the icons
                ),
              ),
              title: Padding(
              
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  "Settings",
                  // padding: EdgeInsets.zero,
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    color: Color.fromARGB(180, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    // fontFamily: GoogleFonts.josefinSans),
                  ),
                
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}

            