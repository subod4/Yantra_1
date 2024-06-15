

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRViewPage extends StatelessWidget {
  final dynamic name;
  final dynamic vehicleNum;


  QRViewPage({Key? key, required this.name, required this.vehicleNum }):super(key: key);



  @override
  Widget build(BuildContext context) {

    String qrData = name +  '\n' + vehicleNum;

    return Scaffold(
      body: Center(child:
      QrImageView(data: qrData, version: QrVersions.auto, size: 200,),),
    );
  }
}