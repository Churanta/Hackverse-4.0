import 'package:arplayground/Cars/alfaromeo6c.dart';
import 'package:arplayground/Cars/jaguarftype.dart';
import 'package:arplayground/Cars/jhtype.dart';
import 'package:arplayground/Cars/lambo.dart';
import 'package:arplayground/Cars/lamborgundi.dart';
import 'package:arplayground/Cars/mercedesamg.dart';
import 'package:arplayground/Cars/mustang.dart';
import 'package:arplayground/Cars/product6.dart';
import 'package:arplayground/Cars/product7.dart';
import 'package:arplayground/presentation/home.dart';
import 'package:flutter/material.dart';

import 'Cars/cyber.dart';
import 'Cars/ferari.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                          Colors.orangeAccent, // light blue
                          Colors.orangeAccent, // medium blue
                          Colors.orangeAccent, // deep blue
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
                          'https://stimg.cardekho.com/images/carexteriorimages/930x620/Mercedes-Benz/AMG-GT/7842/1609141333284/front-left-side-47.jpg',
                          'Mercedes AMG',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Mercedsamg(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://www.topgear.com/sites/default/files/images/inline-galleries/2023/01/e95c8ad1e88436f067766b400dd3db64/05_Alfa-Romeo_GiuliaSWB_Zagato.jpg',
                          'Alfa Romeo 6C',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Alfaromeo6c(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://stimg.cardekho.com/images/carexteriorimages/360x240/Jaguar/Jaguar-F-Type/047.jpg',
                          'Jaguar F-Type',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Jaguarftype(),
                              ),
                            )
                          },
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
                    color: Colors.orangeAccent,
                  ),
                  children: [
                    TextSpan(text: 'High-End Models  '),
                    WidgetSpan(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // children: [
                        //   Image.network(
                        //     'https://www.pngall.com/wp-content/uploads/2017/05/Save-Earth-PNG-Picture.png',
                        //     width: 30, // set the width of the image
                        //     height: 30, // set the height of the image
                        //     fit: BoxFit.cover,
                        //   ),
                        //   // SizedBox(width: 8),
                        //   // Text('India'),
                        // ],
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
                      'https://static.autox.com/uploads/2022/10/Volvo-S90-Bright-Silver-Metallic.jpg',
                      'Volvo S90',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lambo(),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://tesla-cdn.thron.com/delivery/public/image/tesla/0f22af4d-15e0-452d-ba66-1359490b4a0b/bvlatuR/std/2880x1800/Cybertruck-Hero-Desktop',
                      'Lamborghini Aventador ',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => lamborgundi(),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/mustang/2023/collections/dm/22_FRD_MST_55079_C7447317_MUST_GT_Prem_34FrntPassMotnRain_mj.tif?croppathe=1_3x2&wid=900',
                      'Ford Mastang',
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product6(),
                          ),
                        )
                      },
                    ),
                    _buildCard(
                      'https://images.cdn.circlesix.co/image/2/1200/630/5/uploads/media/2021-07/15/791f3c9be5a2368a/86-mpg-sandbox-oskarbakke-_dsc03222.jpeg',
                      'Porshe 959',
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product7(),
                          ),
                        )
                      },
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
                        color: Colors.orangeAccent),
                  ),
                  InkWell(
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
                          'MC Laren',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Alfaromeo6c(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://imgd-ct.aeplcdn.com/1056x660/n/jkpj3sa_1483580.jpg?q=75',
                          'Jaguar F-Type',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => jhtype(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://stimg.cardekho.com/images/carexteriorimages/930x620/Ferrari/SF90-Stradale/7858/1591681679806/front-view-118.jpg',
                          'Ferrari',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ferari(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/mustang/2023/collections/dm/22_FRD_MST_55079_C7447317_MUST_GT_Prem_34FrntPassMotnRain_mj.tif?croppathe=1_3x2&wid=900',
                          'Ford Mastang',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product6(),
                              ),
                            )
                          },
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
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 244, 230),
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
      ),
    );
  }
}
