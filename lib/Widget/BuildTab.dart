import 'dart:ffi';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/ColorConstant.dart';
import 'package:flutter_tutorial/Constants/Constants.dart';
import 'package:flutter_tutorial/Model/ProductModel.dart';
import 'package:google_fonts/google_fonts.dart';

DefaultTabController BuildTab(
    Set<ProductModel> productList, BuildContext context) {
  return DefaultTabController(
    length: 5,

    child: Column(
      children: [
        TabBar(
          //isScrollable: true,
          tabs: [
            Tab(
              icon: Icon(
                Icons.flight,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.directions_transit,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.directions_bike,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.dialer_sip,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.label,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Container(
          height: 300,
          child: TabBarView(children: [
            Icon(
              Icons.flight,
              size: 300,
            ),
            Icon(
              Icons.flight,
              size: 300,
            ),
            Icon(
              Icons.flight,
              size: 300,
            ),
            Icon(
              Icons.flight,
              size: 300,
            ),
            Icon(
              Icons.flight,
              size: 300,
            ),
          ]),
        ),
      ],
    ),
  );
}

_buildChairProducts(Set<ProductModel> productList) {
  return ListView.separated(
      itemBuilder: (context, index) {
        return Column(
          children: productList.map((product) => Text(product.name)).toList(),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 10,
        );
      },
      itemCount: Constants.chairs.length);
}

// class _chairProduct extends StatelessWidget {
//   final ProductModel productModel;
//
//   const _chairProduct({Key key, this.productModel}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ChairProduct(productModel: productModel);
//   }
// }

// class ChairProduct extends StatelessWidget {
//   const ChairProduct({
//     Key key,
//     @required this.productModel,
//   }) : super(key: key);
//
//   final ProductModel productModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       overflow: Overflow.visible,
//       children: [
//         LayoutBuilder(
//           builder: (context, constraints) {
//             return Container(
//               height: constraints.maxHeight,
//               width: 150,
//               child: _buildCard(),
//             );
//           },
//         ),
//         _buildPositioned(),
//       ],
//     );
//   }
//
//   Card _buildCard() {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.grey[200], Colors.white],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             stops: [0.1, 1],
//           ),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: _buildColumn(),
//       ),
//     );
//   }
//
//   Positioned _buildPositioned() {
//     return Positioned(
//       bottom: -10,
//       right: 20,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//         decoration: BoxDecoration(
//             color: ColorConstants.primaryColor,
//             borderRadius: BorderRadius.circular(10)),
//         child: Icon(
//           Icons.shopping_cart,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
//
//
//
//   Column _buildColumn() {
//     return Column(
//       children: [
//         Image.asset(
//           productModel.imagePath,
//           height: 120,
//         ),
//         Text(
//           productModel.name,
//           style: GoogleFonts.varelaRound(
//             color: ColorConstants.primaryColor,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Text(
//           '\$ ${productModel.price}',
//           style: GoogleFonts.varelaRound(
//             color: ColorConstants.primaryColor,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ],
//     );
//   }
// }
