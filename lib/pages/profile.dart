import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: 400,
                width:400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
                  crossAxisAlignment: CrossAxisAlignment.center, // Center the children horizontally
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20), // Add some space between the text and the image
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/ed-sheeran-GettyImages-494227430_1600.jpg?resize=1200:*"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(

              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        height: 100,
                        width: 370,
                        color: Colors.blue,
                        child:Row(
                          children: [
                            Container(
                              height:100,
                              width: 70,
                              child: Icon(Icons.person, color: Colors.white,size: 100,),
                            ),const SizedBox(width: 20),
                            Container(
                                child: Text('Mohit Adhikari',style: TextStyle(fontSize: 25,),),
                            ),
                          ],
                        )
                      ),const SizedBox(height: 10),
                      Container(
                        height: 100,
                        width: 370,
                        color: Colors.blue,
                          child:Row(
                            children: [
                              Container(
                                height:100,
                                width: 70,
                                child: Icon(Icons.email, color: Colors.white,size: 100,),
                              ),const SizedBox(width: 30),
                              Container(
                                child: Text('adhikari@gmail.com',style: TextStyle(fontSize: 25,),),
                              ),
                            ],
                          )
                      ),const SizedBox(height: 10),
                      Container(
                        height: 100,
                        width: 370,
                        color: Colors.blue,
                          child:Row(
                            children: [
                              Container(
                                height:100,
                                width: 70,
                                child: Icon(Icons.car_rental, color: Colors.white,size: 100,),
                              ),const SizedBox(width: 20),
                              Container(
                                child: Text('Ba2059',style: TextStyle(fontSize: 25,),),
                              ),
                            ],
                          )
                      ),const SizedBox(height: 10),
                      Container(
                        height: 100,
                        width: 370,
                        color: Colors.blue,
                          child:Row(
                            children: [
                              Container(
                                height:100,
                                width: 70,
                                child: Icon(Icons.phone, color: Colors.white,size: 100,),
                              ),const SizedBox(width: 30),
                              Container(
                                child: Text('986318966',style: TextStyle(fontSize: 25,),),
                              ),
                            ],
                          )
                      )
                    ],
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
