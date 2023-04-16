import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class jhtype extends StatefulWidget {
  jhtype({Key? key}) : super(key: key);

  @override
  _Product6State createState() => _Product6State();
}

class _Product6State extends State<jhtype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jaguar F-Type'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/jhtype.glb',
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
                            'The Jaguar F-Type is a two-seater sports car that was first introduced in 2013. '
                            'It is available in both coupe and convertible body styles, and offers a range '
                            'of engines that deliver impressive performance. The F-Type is known for its '
                            'sleek and sporty design, as well as its excellent driving dynamics. \n\n',
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
                            '• Engine options: 2.0L 4-cylinder, 3.0L V6, 5.0L V8\n'
                            '• Horsepower: 296-575 hp\n'
                            '• Torque: 295-516 lb-ft\n'
                            '• Transmission: 6-speed manual, 8-speed automatic\n'
                            '• 0-60 mph: 3.5-5.4 seconds\n'
                            '• Top speed: 155-200 mph\n'
                            '• Fuel economy: 18-30 mpg combined\n',
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
