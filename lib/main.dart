

import 'package:bottom_navigation/contact.dart';
import 'package:bottom_navigation/home.dart';
import 'package:bottom_navigation/profile.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _mycurrentindex=0;
  List mypages=[Home(),Contact(),Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
        ),
        body: mypages[_mycurrentindex],
        
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _mycurrentindex=index;

            });
          },
          backgroundColor: Colors.white12,
            currentIndex: _mycurrentindex,
            items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page_rounded),
          label: "Contact"),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle),
           label: "Profile")
        ]),
      ),
    );
  }
}
