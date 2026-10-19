 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class rentalService extends StatefulWidget {
  const rentalService({super.key});

  @override
  State<rentalService> createState() => _rentalService();
}

class _rentalService extends State<rentalService> {

  List allImgs = [
    'assets/images/image1.png',
    'assets/images/image.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rent house',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 16,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          }
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:  ListView(
        children: <Widget>[
          Stack(
            children: <Widget> [
              Container(height: 300.0, color: Colors.transparent),
              CarouselSlider(
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true, // optional
                  enlargeCenterPage: true, // optional
                ),
                items: allImgs.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: <Widget> [
                          Container(height: 300, color: Colors.transparent),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage(i),
                                  fit: BoxFit.cover
                                  ),
                                ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 150,
                            child: Container(
                              height: 100,
                              width: 240,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1,
                                    color: Colors.grey.withOpacity(0.8),
                                    blurRadius: 1
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(7)
                              ),
                              child: Container(
                                width: 240,
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 15),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Kra water village',
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text(
                                                  '18',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                  SizedBox(height: 7),
                                                  Text(
                                                    'sell',
                                                    style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 11,
                                                    ),
                                                  )
                                              ],
                                            ),
                                            SizedBox(width: 25),
                                            Column(
                                              children: <Widget> [
                                                Text(
                                                  '74',
                                                  style: TextStyle(
                                                    fontFamily: 'Monstserrat',
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                  SizedBox(height: 7),
                                                  Text(
                                                    'Rent',
                                                    style:TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      fontSize:11,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]
                                    ),                         
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList()),
            ],
          ),
        ],
      ),
    );
  }
}