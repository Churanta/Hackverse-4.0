import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Product7 extends StatefulWidget {
  Product7({Key? key}) : super(key: key);

  @override
  _Product7State createState() => _Product7State();
}

class _Product7State extends State<Product7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Porshe 959'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/porshe.glb',
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
                            'Porsche 959',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Porsche 959 is a sports car manufactured by German car maker Porsche from 1986 to 1988. '
                            'It was first introduced at the 1983 Frankfurt Motor Show as a concept car and was later produced '
                            'in limited numbers for the high-end market. The car featured advanced technologies such as an '
                            'all-wheel drive system, a twin-turbocharged flat-six engine, and a lightweight body made of '
                            'Kevlar and aluminum. \n\n',
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
                            '• Engine: 2.8 L twin-turbocharged flat-six\n'
                            '• Horsepower: 444 hp\n'
                            '• Top speed: 197 mph\n'
                            '• Acceleration (0-60 mph): 3.6 seconds\n'
                            '• Transmission: 6-speed manual\n'
                            '• All-wheel drive\n'
                            '• Weight: 3,190 lbs\n',
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
