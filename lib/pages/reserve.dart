import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reserve extends StatelessWidget {
  const Reserve({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(title: Text("Reserve Spot"),),
     )
    );



  }
}
