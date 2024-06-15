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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage('assets/background.jpg'),fit:BoxFit.fitHeight),
          ),

          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],

                borderRadius: BorderRadius.circular(30)
              ),

                height: 500,
                width: 400,

                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    SizedBox(height: 20,),
                    Text('Edit your information',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

                    TextField(
                      controller: myConTrollerName,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Type your new name",
                      ),
                    ),
                    SizedBox(height: 20,),

                    TextField(
                      controller: myConTrollerEmail,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Type your Email",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: myConTrollerPhone,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Type your phone Number",
                      ),
                    ),
                    SizedBox(height: 20,),

                    TextField(
                      controller: myConTrollerNumber,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Type your Car Number",
                      ),
                    ),
                    SizedBox(height: 20,),

                    ElevatedButton(onPressed: (){ print('hi');}, child: Text('Submit')),
                  ],
                ),




                    ),
          ),
        ),
        )
    );
  }
}
