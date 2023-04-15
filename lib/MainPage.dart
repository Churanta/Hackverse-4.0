import 'package:arplayground/presentation/home.dart';
import 'package:flutter/material.dart';

import 'Cars/cyber.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 250, 255),
      appBar: CustomAppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Products',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          Color.fromARGB(255, 135, 206, 250), // light blue
                          Color.fromARGB(255, 0, 191, 255), // medium blue
                          Color.fromARGB(255, 0, 0, 205), // deep blue
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(Rect.fromLTRB(0, 0, 0,
                          40)), // change the last value to increase/decrease the height of the gradient effect
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("View all");
                    // Your function here
                  },
                  child: Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          'https://tesla-cdn.thron.com/delivery/public/image/tesla/0f22af4d-15e0-452d-ba66-1359490b4a0b/bvlatuR/std/2880x1800/Cybertruck-Hero-Desktop',
                          'Cybertruck',
                          () => print('Product 1 tapped!'),
                        ),
                        _buildCard(
                          'https://stimg.cardekho.com/images/carexteriorimages/930x620/Mercedes-Benz/AMG-GT/7842/1609141333284/front-left-side-47.jpg',
                          'Mercedes AMG',
                          () => print('Product 3 tapped!'),
                        ),
                        _buildCard(
                          'https://www.topgear.com/sites/default/files/images/inline-galleries/2023/01/e95c8ad1e88436f067766b400dd3db64/05_Alfa-Romeo_GiuliaSWB_Zagato.jpg',
                          'Alfa Romeo 6C',
                          () => print('Product 2 tapped!'),
                        ),
                        _buildCard(
                          'https://stimg.cardekho.com/images/carexteriorimages/360x240/Jaguar/Jaguar-F-Type/047.jpg',
                          'Jaguar F-Type',
                          () => print('Product 4 tapped!'),
                        ),
                      ],
                    )),
              ),
              Divider(),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 90, 90),
                  ),
                  children: [
                    TextSpan(text: 'Top 10 in '),
                    WidgetSpan(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                            'https://cdn.pixabay.com/photo/2017/02/26/00/31/borders-2099205__340.png',
                            width: 20, // set the width of the image
                            height: 30, // set the height of the image
                            fit: BoxFit.cover,
                          ),
                          // SizedBox(width: 8),
                          // Text('India'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Wrap(
                  spacing: 16, // spacing between cards
                  runSpacing: 16, // spacing between rows
                  children: [
                    _buildCard(
                      'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/models_gw/2023/03_29_revuelto/gate_models_s_02_m.jpg',
                      'Product 5',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DebugOptionsWidget(),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://tesla-cdn.thron.com/delivery/public/image/tesla/0f22af4d-15e0-452d-ba66-1359490b4a0b/bvlatuR/std/2880x1800/Cybertruck-Hero-Desktop',
                      'Cyber Truck',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cyber(),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://windingroad.com/wp-content/uploads/autos_db/thumbnails/ferrari-330-p3-5.jpg',
                      'Product 6',
                      () => print('Product 6 tapped!'),
                    ),
                    _buildCard(
                      'https://windingroad.com/wp-content/uploads/autos_db/thumbnails/ferrari-330-p3-5.jpg',
                      'Product 6',
                      () => print('Product 6 tapped!'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Brands',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 90, 90)),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("View all");
                      // Your function here
                    },
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          'https://cdni.autocarindia.com/ExtraImages/20220211050819_Alfa_Romeo_Giulia_GTA.jpg',
                          'Alpha Romeo',
                          () => print('Alpha Romeo'),
                        ),
                        _buildCard(
                          'https://imgd-ct.aeplcdn.com/1056x660/n/jkpj3sa_1483580.jpg?q=75',
                          'Jaguar',
                          () => print('Jaguar'),
                        ),
                        _buildCard(
                          'https://stimg.cardekho.com/images/carexteriorimages/930x620/Ferrari/SF90-Stradale/7858/1591681679806/front-view-118.jpg',
                          'Ferrari',
                          () => print('Ferrari'),
                        ),
                        _buildCard(
                          'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/mustang/2023/collections/dm/22_FRD_MST_55079_C7447317_MUST_GT_Prem_34FrntPassMotnRain_mj.tif?croppathe=1_3x2&wid=900',
                          'Ford Mastang',
                          () => print('Ford Mastang'),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imgUrl, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imgUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//
//
//
//
// Appbar
//
//
//
//
//

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Binary Brains',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/BB.png',
          height: 40,
          width: 40,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          color: Colors.black,
          onPressed: () {},
        ),
      ],
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: NetworkImage(
      //         'https://img.freepik.com/free-vector/background-template-with-mandala-pattern-design_1308-42133.jpg',
      //       ),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
    );
  }
}
