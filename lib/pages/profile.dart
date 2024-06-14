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
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
