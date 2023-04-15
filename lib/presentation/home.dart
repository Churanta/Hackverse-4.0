import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DebugOptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Churanta'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Choose a 3D Model:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Image.network(
            'https://imgd.aeplcdn.com/0x0/n/cw/ec/20865/amg-gt-exterior-right-front-three-quarter-60800.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildCard(
                  context,
                  Icons.ac_unit,
                  'https://egybasket.com/wp-content/uploads/2022/10/gaming_chair_free_download.glb',
                  'A 3D model of an astronaut',
                ),
                _buildCard(
                  context,
                  Icons.account_box,
                  'assets/models/Giulettina.glb',
                  'A 3D model of the Earth',
                ),
                _buildCard(
                  context,
                  Icons.account_box,
                  'assets/models/cyber.glb',
                  'A 3D model of the Earth',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
      BuildContext context, IconData icon, String src, String alt) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Icon(icon),
          ),
          Expanded(
            flex: 3,
            child: ModelViewer(
              src: src,
              ar: true,
              alt: alt,
              autoPlay: true,
              autoRotate: true,
              cameraControls: true,
            ),
          ),
        ],
      ),
    );
  }
}
