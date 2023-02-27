// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login/kategori.dart';
import 'package:login/qr.dart';
import 'main.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

// ignore: camel_case_types
class scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 122, 0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
//button mbalik
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
//button lanjut
              actions: [IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KategoriPage()));
                },
              ),]
            ),
//tulisan scan qr
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Scan QR Code',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
//tulisan move cam
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Please move the camera ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
//tulisan over
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Text(
                        'over another device’s screen',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),

//gambar di tengah
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                      'assets/scan/barcode3.png',
                      width: 250,
                      height: 350,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),

//button scan here
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QRViewExample()));
                        },
                        child: Text(
                          'Scan Here',
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 122, 0),
                          minimumSize: Size(200, 50),
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(16),
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
