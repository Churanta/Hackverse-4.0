import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class lamborgundi extends StatefulWidget {
  lamborgundi({Key? key}) : super(key: key);

  @override
  _CyberState createState() => _CyberState();
}

class _CyberState extends State<lamborgundi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lamborgini'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/lamborgundi.glb',
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
                            'Lamborghini Aventador',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Lamborghini Aventador is a mid-engine sports car produced by the Italian '
                            'automaker Lamborghini. It was introduced in 2011 as the successor to the Murciélago. '
                            'The Aventador features a carbon fiber monocoque with a V12 engine, and it comes '
                            'with all-wheel drive. \n\n',
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
                            '• Engine: 6.5 L V12\n'
                            '• Horsepower: 730 hp\n'
                            '• Torque: 509 lb-ft\n'
                            '• Transmission: 7-speed automatic\n'
                            '• Top speed: 217 mph\n'
                            '• Acceleration (0-60 mph): 2.8 seconds\n'
                            '• Curb weight: 4,125 lbs\n',
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
