import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Alfaromeo6c extends StatefulWidget {
  Alfaromeo6c({Key? key}) : super(key: key);

  @override
  _Alfaromeo6cState createState() => _Alfaromeo6cState();
}

class _Alfaromeo6cState extends State<Alfaromeo6c> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MC Laren'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/mclaren.glb',
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
                            'McLaren 720S',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The McLaren 720S is a British sports car that was introduced in 2017. '
                            'It is powered by a 4.0-liter V8 engine that produces 710 horsepower and 568 lb-ft of torque. '
                            'The car has a top speed of 212 mph and can accelerate from 0-60 mph in just 2.8 seconds. '
                            'The 720S features a carbon fiber monocoque chassis and has a dry weight of just 2,828 pounds. '
                            'It also features a sophisticated active suspension system that adjusts the car\'s handling in real time. \n\n',
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
                            '• Engine: 4.0-liter twin-turbo V8\n'
                            '• Horsepower: 710 hp\n'
                            '• Torque: 568 lb-ft\n'
                            '• Top Speed: 212 mph\n'
                            '• 0-60 mph: 2.8 seconds\n'
                            '• Dry Weight: 2,828 pounds\n'
                            '• Suspension: Active\n'
                            '• Chassis: Carbon Fiber Monocoque\n',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




