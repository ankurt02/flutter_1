// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2022/10/roadtonarutopv_screenshot.png?resize=768%2C432&ssl=1";
    return Drawer(
      child: Container(
        color: Colors.white10,
        child: ListView(

          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.white10),
                accountName: Text("Ankur Tiwary"), 
                accountEmail: Text("7083ankurt@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
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