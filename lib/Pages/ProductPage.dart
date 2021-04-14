import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/Constants.dart';
import 'package:flutter_tutorial/Model/ProductModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class ProductPage extends StatefulWidget {
  final String type;

  ProductPage(this.type);

  @override
  State<StatefulWidget> createState() {
    return ProductPageState(type);
  }
}

class ProductPageState extends State<ProductPage> {

  String type;

  TextEditingController editingController=TextEditingController();

  ProductPageState(this.type);

  final List<ProductModel> productData=List<ProductModel>();
  final List<ProductModel> items=List<ProductModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    items.addAll(Constants.chairs);
    print("init st");
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
          title: Text(type),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add_call,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                height: MediaQuery.of(context).size.height * .07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 20,
                        color: Colors.grey.withOpacity(.4),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .07,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          onChanged: (value) {
                            searchResult(value);
                          },

                          controller: editingController,

                          cursorColor: Colors.blue,
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search Products',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.normal,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.search, color: Colors.blue),
                        onPressed: null)
                  ],
                ),
              ),
              _categoryWidget(),
              productList(),
            ],
          ),
        ),
      ),
    );
  }


  _categoryWidget() {
    List<ProductModel> productList = <ProductModel>[];
    productList.addAll(Constants.chairs);
    print(productList.length);
    return Container(
      margin: EdgeInsets.fromLTRB(0,0, 0, 0),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {

          return GestureDetector(

            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>ProductPage(productList[index].productType),
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

  productList() {
    return Expanded(
        child: GridView.count(
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 5,
      primary: false,
      crossAxisCount: 2,
      children: items
          .map((product) => Container(
                decoration: BoxDecoration(),
                child: Card(
                    elevation: 10,
                    child: Column(children: [
                      cardHeader(product),
                      cardBody(product),
                      cardFooter(product),
                    ])),
              ))
          .toList(),
    ));
  }

  cardHeader(ProductModel product) {
    return Container(
        margin: EdgeInsets.fromLTRB(5, 8, 5, 0),
        child: Center(
            child: Text(
              product.name,
              style: TextStyle(color: Colors.black, fontSize: 18),
            )));

  }

  cardBody(ProductModel product) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8)),
          child: Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Image.asset(
                product.imagePath,
                height: 80,
                width: 80,
              ))),
    );
  }

  cardFooter(ProductModel product) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 8, 5, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            product.price.toString() + " Tk",
            style:
            TextStyle(fontSize: 18, color: Colors.black),
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
    );
  }



  void searchResult(String query){
    List<ProductModel> searchList=List<ProductModel>();
    searchList.addAll(Constants.chairs);
    if(query.isNotEmpty){
      searchList.forEach((element) {
        if(element.name.contains(query)){
          productData.add(element);
          print("query / "+ query);
        }
      });

      setState(() {
        items.clear();

        items.addAll(productData);
        productData.clear();

      });

    return;
    }else{
     setState(() {
       items.clear();
       items.addAll(searchList);
     });


    }


  }


}
