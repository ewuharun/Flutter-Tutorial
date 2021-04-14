import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/Constants.dart';
import 'package:flutter_tutorial/Model/ProductModel.dart';
import 'package:flutter_tutorial/Pages/ProductPage.dart';
import 'package:flutter_tutorial/Widget/floatingButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          'Ittadi Traders',
          style: GoogleFonts.varelaRound(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
            onPressed: () {
              callNumber('+8801740808519');
            },
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                _categoryText(),

                _categoryWidget(),
                _carousel_slider(),

                _todayesOfferText(),
                _discountProduct(),

                _topProductText(),
                _topProductList(),
                //_discountProductText(),
                //_discountProduct(),
              ],
            );
          },
        ),
      ),

      floatingActionButton: Container(

        child: floatingButton(context),
      ),
    );
  }

  void callNumber(String number) {
    launch(('tel:01903028309'));
  }
}

























_carousel_slider() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 200.0,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      enlargeCenterPage: true,
    ),
    items: ['assets/images/1.png', 'assets/images/1.png', 'assets/images/1.png']
        .map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(

            width: MediaQuery.of(context).size.width,
            child: Image.asset(i),
          );
        },
      );
    }).toList(),
  );
}



_todayesOfferText() {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.fromLTRB(8, 5, 0, 0),
    child: Text(
      'Todays Offer',
      style: GoogleFonts.varelaRound(
        fontSize: 24,
        color: Colors.blue,
      ),
    ),
  );
}



_discountProductText() {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.fromLTRB(8, 5, 0, 0),
    child: Text(
      'Discount Product',
      style: GoogleFonts.varelaRound(
        fontSize: 24,
        color: Colors.blue,
      ),
    ),
  );
}


_topProductText() {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.fromLTRB(8, 5, 0, 0),
    child: Text(
      'Top Product',
      style: GoogleFonts.varelaRound(
        fontSize: 24,
        color: Colors.blue,
      ),
    ),
  );
}

_categoryText() {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.fromLTRB(8, 5, 0, 0),
    child: Text(
      'Category',
      style: GoogleFonts.varelaRound(
        fontSize: 24,
        color: Colors.blue,
      ),
    ),
  );
}

_topProductList() {
  List<ProductModel> topProduct = List<ProductModel>();
  topProduct.addAll(Constants.chairs);

  return Container(
    height: 170,
    child: Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Constants.chairs.length,
        itemBuilder: (context, index) {
          return Row(
            children: topProduct
                .map((product) => Card(
                      elevation: 10,
                      child: Container(
                        height: 180,
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              child: Text(
                                product.name,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset(product.imagePath)),
                            ),
                            cardFooter(product),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          );
        },
      ),
    ),
  );
}

_discountProduct() {
  List<ProductModel> topProduct = List<ProductModel>();
  topProduct.addAll(Constants.chairs);

  return Container(
    height: 170,
    child: Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Constants.chairs.length,
        itemBuilder: (context, index) {
          return Row(
            children: topProduct
                .map((product) => Card(
                      elevation: 10,
                      child: Container(
                        height: 180,
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              child: Text(
                                product.name,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset(product.imagePath)),
                            ),
                            cardFooter(product),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          );
        },
      ),
    ),
  );
}

_categoryWidget() {
  List<ProductModel> productList = <ProductModel>[];
  productList.addAll(Constants.chairs);
  print(productList.length);
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
    height: 60,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductPage(productList[index].productType),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                productList[index].productType,
                style: GoogleFonts.varelaRound(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

cardFooter(ProductModel product) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.fromLTRB(15, 20, 5, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            product.price.toString() + " Tk",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
            child: FloatingActionButton(
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: null),
          ),
        ],
      ),
    ),
  );
}
