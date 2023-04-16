import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Lambo extends StatefulWidget {
  Lambo({Key? key}) : super(key: key);

  @override
  _LamboState createState() => _LamboState();
}

class _LamboState extends State<Lambo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volvo S90'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/volvo.glb',
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
                            'Volvo S90',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Volvo S90 is a luxury sedan that combines elegant Scandinavian design with advanced safety '
                            'and comfort features. It is available in both front-wheel and all-wheel drive configurations, '
                            'and comes with a range of engines, including hybrid options. \n\n',
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
                            '• Engine: 2.0L turbocharged 4-cylinder (T5) or 2.0L supercharged and turbocharged 4-cylinder (T6)\n'
                            '• Horsepower: 250 hp (T5) or 316 hp (T6)\n'
                            '• Transmission: 8-speed automatic\n'
                            '• Drivetrain: Front-wheel drive (T5) or all-wheel drive (T6)\n'
                            '• Fuel economy: 23-25 mpg city / 32-34 mpg highway\n'
                            '• Dimensions: 200.1” L x 74.0” W x 57.1” H\n'
                            '• Cargo volume: 13.5 cu ft\n'
                            '• Safety features: Adaptive cruise control, lane departure warning, forward collision warning, '
                            'automatic emergency braking, and more\n',
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
