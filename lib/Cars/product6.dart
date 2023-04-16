import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Product6 extends StatefulWidget {
  Product6({Key? key}) : super(key: key);

  @override
  _Product6State createState() => _Product6State();
}

class _Product6State extends State<Product6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ford Mastang'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/mastang.glb',
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
                            'Ford Mustang',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Ford Mustang is a legendary American muscle car that has been in production since 1964. '
                            'It is known for its sleek design, powerful engine, and exhilarating performance. The Mustang '
                            'is available in a variety of models, including the EcoBoost, GT, Shelby GT350, and Shelby GT500. '
                            'The Mustang has a starting price of US 27,205, but the price can go up depending on the '
                            'model and features selected. \n\n',
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
                            '• Engine: 2.3L EcoBoost, 5.0L V8, 5.2L V8\n'
                            '• Horsepower: 310-760 hp\n'
                            '• Torque: 350-625 lb-ft\n'
                            '• Acceleration (0-60 mph): 3.3-4.6 seconds\n'
                            '• Top Speed: 155-180 mph\n'
                            '• Fuel Economy (city/hwy): 14-22/22-32 mpg\n'
                            '• Seating Capacity: 4\n'
                            '• Trunk Capacity: 13.5 cubic feet\n',
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
