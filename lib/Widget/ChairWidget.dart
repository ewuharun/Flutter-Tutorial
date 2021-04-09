import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/ColorConstant.dart';
import 'package:flutter_tutorial/Pojo/ProductModel.dart';
import 'package:google_fonts/google_fonts.dart';

class ChairWidget extends StatelessWidget {
  final ProductModel productModel;

  const ChairWidget({Key key, this.productModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Chair(productModel: productModel);
  }
}

class Chair extends StatelessWidget {
  const Chair({
    Key key,
    @required this.productModel,
  }) : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.grey[200],
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.1, 1]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        productModel.imagePath,
                        height: 120,
                      ),
                      Text(
                        productModel.name,
                        style: GoogleFonts.varelaRound(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '\$${productModel.price}',
                        style: GoogleFonts.varelaRound(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: -10,
          right: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
