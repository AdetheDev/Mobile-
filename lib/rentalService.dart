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
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg'
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
                                                ),
                                                SizedBox(height: 7),
                                                Text(
                                                  'Rent',
                                                  style:TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize:11,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 25),
                                            Column(
                                              children: <Widget>[
                                                Text(
                                                  '36',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                SizedBox(height: 7),
                                                Text(
                                                  'Sublet',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 11,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        SizedBox(height:15),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            Text(
                                              '4.9',
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                color:Colors.amber,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height:20),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF2560FA),
                                            borderRadius:
                                            BorderRadius.circular(10)
                                          ),
                                          child: Center(
                                            child: Icon(Icons.send,
                                            color: Colors.white,
                                            size: 14),
                                          ),
                                        ),
                                      ],
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
                }).toList())
            ],
          ),
          SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.only(left:10, right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Rent',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey
                    )
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height - 425,
            child: ListView(
              children: <Widget>[
                _buildCard('Gounuli', 'assets/images/chris.jpg', '3.7', 'The newly decorated new house is well furnished and has a beautiful eviroment'),
                _buildCard('Michelle', 'assets/images/hugh.jpg', '4.3', 'Country garden a villa want to add me'),
              ],
            ),
          )
        ],
      )
    );
  }

    _buildCard(String name, String imgPath, String price, String desc) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 2, color: Colors.grey.withOpacity(0.3), spreadRadius: 2)
          ],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width - 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 11,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            SizedBox(height: 5),
                            Text('6 minutes ago',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 11,
                              color: Colors.grey
                            )
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  Text('\$' + price + 'million',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: Color(0xFFFE6643)
                  ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
              child: Text(desc,
              style: TextStyle(
                fontFamily: 'Monthserrat',
                fontSize: 12,
              )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 8),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 125,
                    width: (MediaQuery.of(context).size.width) /2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        image: AssetImage('assets/images/pic1.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: (MediaQuery.of(context).size.width - 90) /2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(image: AssetImage('assets/images/pic1.jpg'),
                          fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 60,
                        width: (MediaQuery.of(context).size.width -90) /2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                            image: AssetImage('assets/images/pic1.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

