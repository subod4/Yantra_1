import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yantra/pages/customer_home.dart';
import 'package:yantra/pages/home.dart';
import 'package:yantra/pages/profile.dart';
import 'package:yantra/pages/qrGenerator.dart';
import 'package:yantra/pages/reserve.dart';
import 'package:yantra/pages/setting.dart';
import 'package:yantra/pages/timing.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

               Container(
                height: 50,
                width: 370,

                color: Colors.black, // Add a background color to make it visible
                child: Center(
                  child: Text(
                    "Sign in as?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            SizedBox(height: 20), // Add some spacing between the containers
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CustomerHome()));
              },
              child: Container(
                height: 200,
                width: 300,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.car_rental,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some spacing between the containers
            Container(
              height: 200,
              width: 300,
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Icon(
                  Icons.apartment,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),    );
  }
}
