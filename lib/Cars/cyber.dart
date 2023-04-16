import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Cyber extends StatefulWidget {
  Cyber({Key? key}) : super(key: key);

  @override
  _CyberState createState() => _CyberState();
}

class _CyberState extends State<Cyber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tesla Cybertruck'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/cyber.glb',
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
                            'Tesla Cybertruck',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Tesla Cybertruck is an all-electric, battery-powered, light-duty truck '
                            'that was designed by Tesla, Inc. Three models have been announced, with EPA '
                            'range estimates of 250–500 miles (400–800 km) and an estimated 0–60 mph '
                            'time of 2.9–6.5 seconds, depending on the model. The intended sale price is '
                            'US 39,900–69,900 depending on the model. \n\n',
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
                            '• Battery range: 250-500 miles\n'
                            '• Acceleration (0-60 mph): 2.9-6.5 seconds\n'
                            '• Towing capacity: 7,500+ pounds\n'
                            '• Payload capacity: 3,500+ pounds\n'
                            '• Storage capacity: 100 cubic feet\n'
                            '• Ground clearance: Up to 16 inches\n'
                            '• Approach angle: 35 degrees\n'
                            '• Departure angle: 28 degrees\n',
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


