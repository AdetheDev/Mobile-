import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CoffeeApp extends StatefulWidget {
  const CoffeeApp({super.key});

  @override
  State<CoffeeApp> createState() => _CoffeeAppState();
}


class MyHomePage extends StatefulWidget {

  @override
  State<CoffeeApp> createState() => _CoffeeAppState();
}

class _CoffeeAppState extends State<CoffeeApp> {

  var selectedItem = 'All Product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: () {}
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, right: 15.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.transparent
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF116D51),
                    ),
                    child: Center(
                      child: Icon(Icons.shopping_basket, color: Colors.white, size: 20)
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 30,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                      ),
                      child: Center(
                        child: Text(
                          '8',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Starbucks Coffee',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildItem('All Products', 59),
                  _buildItem('Espresso', 17),
                  _buildItem('Iced Tea', 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height - 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  _buildCoffeeItem('assets/images/image.png', 'Latte with Tumeric', 'Iced Coffee', '2.99'),
                  _buildCoffeeItem('assets/images/Coffee.png', 'Latte with Tumeric', 'Iced Coffee', '2.99'),
                  _buildCoffeeItem('assets/images/image1.png', 'Latte with Tumeric', 'Iced Coffee', '2.99'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCoffeeItem(String imgpath, String productName, String productType, String price) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 225.0,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 4.0,
              color: Colors.grey.withOpacity(0.4)
            ),
          ]
        ),
        child: Stack(
          children: <Widget> [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Container(
                  height: 200.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                    image: DecorationImage(
                      image: AssetImage(imgpath),
                      fit: BoxFit.cover
                    )
                  )
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text(
                    productName,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text(
                    productType,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 0.4,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Text(
                        '\£' + price,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 19
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color:Colors.grey
                            ),
                          ),  
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            )           
          ]
        ),
      ),
    );
  }

  _buildItem(String productName, int count) {
    return Padding(
      padding: EdgeInsets.only(right:15, top: 10, bottom: 10, left:4),
     child:AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          color: switchHighlight(productName),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 2,
              color: switchShadow(productName)
            ),
          ]
        ),
        height: 50,
        width: 125,
        child: InkWell(
          onTap: () {
            selectedProduct(productName);
          },
          child: Column(
            children: <Widget> [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: switchHighlightColor(productName)
                  ),
                ),
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    color: switchHighlightColor(productName)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectedProduct(prodName) {
    setState(() {
      selectedItem = prodName;
    });
  }

  switchHighlight(prodName) {
    if(prodName == selectedItem) {
      return Color(0xFF116D51);
    }
    else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if(prodName == selectedItem) {
      return Colors.white;
    }
    else {
      return Colors.black;
    }
  }

  switchShadow(prodName) {
    if(prodName == selectedItem) {
      return Color(0xFF116D51).withOpacity(0.4);
    }
    else {
      return Colors.transparent;
    }
  }
}









