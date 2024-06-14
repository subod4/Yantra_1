import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yantra/pages/home.dart';
import 'package:yantra/pages/profile.dart';
import 'package:yantra/pages/qrGenerator.dart';
import 'package:yantra/pages/reserve.dart';
import 'package:yantra/pages/setting.dart';
import 'package:yantra/pages/timing.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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