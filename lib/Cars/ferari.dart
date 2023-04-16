import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Ferari extends StatefulWidget {
  Ferari({Key? key}) : super(key: key);

  @override
  _MustangState createState() => _MustangState();
}

class _MustangState extends State<Ferari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SF90 Stradale'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/ferari.glb',
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
                            'SF90 Stradale',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Ferrari SF90 Stradale is a mid-engine plug-in hybrid sports car produced by the Italian '
                            'automaker Ferrari. The car is powered by a 4.0 L twin-turbocharged V8 engine combined with '
                            'three electric motors, giving it a total power output of 986 hp. The car has a top speed of '
                            '211 mph (340 km/h) and can accelerate from 0 to 62 mph (0 to 100 km/h) in just 2.5 seconds. '
                            'It has a pure electric range of up to 16 miles (25 km) and a combined fuel economy of 72 '
                            'mpg (3.2 L/100 km). The SF90 Stradale is also the first Ferrari to feature all-wheel drive. \n\n',
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
                            '• Engine: 4.0 L twin-turbocharged V8\n'
                            '• Electric motors: 3\n'
                            '• Combined power output: 986 hp\n'
                            '• Top speed: 211 mph (340 km/h)\n'
                            '• Acceleration (0-62 mph): 2.5 seconds\n'
                            '• Electric range: Up to 16 miles (25 km)\n'
                            '• Fuel economy: 72 mpg (3.2 L/100 km)\n'
                            '• All-wheel drive: Yes\n',
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
