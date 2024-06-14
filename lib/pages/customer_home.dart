import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yantra/pages/profile.dart';
import 'package:yantra/pages/setting.dart';

import 'home.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _MyAppState();
}

class _MyAppState extends State<CustomerHome> {
  final List<Widget> pages=[
    const Home(),
    const Profile(),
    const Setting(),
  ];
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("KatPark")),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value){
            setState(() {
              currentPage=value;
            });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),
                label:'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label:'Settings'
            ),
          ]
      ),


    );


  }
}