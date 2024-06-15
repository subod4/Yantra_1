
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yantra/pages/qrPage.dart';

class QRCodeGenerator extends StatefulWidget {
@override
_QRCodeGeneratorState createState() => _QRCodeGeneratorState();
}

class _QRCodeGeneratorState extends State<QRCodeGenerator> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _vehicleNumberController = TextEditingController();

  String? _qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _vehicleNumberController,
              decoration: InputDecoration(
                hintText: 'Enter Vehicle Number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _qrData = '${_nameController.text}\n${_vehicleNumberController.text}';
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QRViewPage( name: _nameController.text, vehicleNum: _vehicleNumberController.text,)));
                });
              },
              child: Text('Generate QR Code'),
            ),
            SizedBox(height: 20),
            // _qrData != null ? QrImageView(data: _qrData.toString(), version: QrVersions.auto, size: 200,) : SizedBox.shrink(),


          ],
        ),
      ),
    );
  }
}
