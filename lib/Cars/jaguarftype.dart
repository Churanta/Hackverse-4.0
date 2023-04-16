import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Jaguarftype extends StatefulWidget {
  Jaguarftype({Key? key}) : super(key: key);

  @override
  _JaguarftypeState createState() => _JaguarftypeState();
}

class _JaguarftypeState extends State<Jaguarftype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jaguar F-type'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/jaguarFtype.glb',
                ar: true,
                alt: 'A 3D model of Tesla Cybertruck',
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Jaguar F-Type',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'The Jaguar F-Type is a luxury sports car with a sleek and stylish design. The best model of the F-Type is the F-Type R, which comes with a powerful 5.0-liter V8 engine that produces 575 horsepower and can go from 0-60 mph in just 3.5 seconds.\n\n',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Specifications',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              '• Engine: 5.0-liter V8\n'
                              '• Horsepower: 575 hp\n'
                              '• Acceleration (0-60 mph): 3.5 seconds\n'
                              '• Top speed: 186 mph\n'
                              '• Fuel economy (city/highway/combined): 16/24/19 mpg\n'
                              '• Curb weight: 3,814 pounds\n'
                              '• Cargo volume: 14.4 cubic feet\n',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
