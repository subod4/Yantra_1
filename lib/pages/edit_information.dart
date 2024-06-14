import 'package:flutter/material.dart';

class editInfo extends StatefulWidget {
  const editInfo({super.key});

  @override
  State<editInfo> createState() => _editInfoState();
}

class _editInfoState extends State<editInfo> {
  TextEditingController myConTrollerName=TextEditingController();
  TextEditingController myConTrollerPhone=TextEditingController();
  TextEditingController myConTrollerNumber=TextEditingController();
  TextEditingController myConTrollerEmail=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),

              TextField(
                controller: myConTrollerName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your new name",
                ),
              ),
              SizedBox(height: 20,),

              TextField(
                controller: myConTrollerEmail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your Email",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: myConTrollerPhone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your phone Number",
                ),
              ),
              SizedBox(height: 20,),

              TextField(
                controller: myConTrollerNumber,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your Car Number",
                ),
              ),
              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){ print('hi');}, child: Text('Submit')),
            ],
          ),
        )

      ),


    );
  }
}
