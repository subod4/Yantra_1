import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yantra/pages/qrGenerator.dart';
import 'package:yantra/pages/reserve.dart';
import 'package:yantra/pages/timing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



        body:
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage('assets/background.jpg'),fit:BoxFit.fitHeight),
          ),
          child: Column(
              children: <Widget>[
                Center(
                  child:
                  Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.only(left: 16.0),
                              child: Icon(Icons.search, color: Colors.white))
                        ]),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 370,
                  width: 370,
                  color: Colors.green,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          height: 400,
                          width: 370,
                          child: const Image(
                            image: AssetImage('assets/image2.jpg'),
                            fit: BoxFit.cover,)
                      ),
                      Container(
                          height: 400,
                          width: 370,
                          child: const Image(
                            image: AssetImage('assets/image3.jpg'),
                            fit: BoxFit.cover,)),
                      Container(
                          height: 400,
                          width: 370,
                          child: const Image(
                            image: AssetImage('assets/image1.jpg'),
                            fit: BoxFit.cover,))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    height: 300,
                    width: 400,
                    child: Column(
                      children: [

                        Container(
                          height: 50,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)

                          ),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Reserve()));
                              },
                              child: Center(child: Text("Reserve Spot",
                                style: TextStyle(color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),),)),

                        ),
                        const SizedBox(height: 10),
                        Container(
                            height: 50,
                            width: 370,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)

                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => Generate()));
                                },
                                child: Center(child: Text("Generate Qr",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),)))

                        ),
                        const SizedBox(height: 10),
                        Container(
                            height: 50,
                            width: 370,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => Timing()));
                                },
                                child: Center(child: Text("Time Session",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),)))
                        ),
                      ],
                    )


                )


              ]),
        )
    );
  }

  }
