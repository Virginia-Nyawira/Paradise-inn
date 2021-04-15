import 'package:flutter/material.dart';
import 'package:paradse_hotel/pages/product_details.dart';

class Products extends StatefulWidget {
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Vegetable Suey",
      "picture": "images/vegetable_suey.jpeg",
      "price": "8",
    },
    {
      "name": "Orange Chicken",
      "picture": "images/orange_chicken.jpeg",
      "price": "7",
    },
    {
      "name": "Hamburger",
      "picture": "images/hamburger.jpeg",
      "price": "2",
    },
    {
      "name": "Chicken Nudget",
      "picture": "images/chicken_nudget.jpeg",
      "price": "3",
    },
    {
      "name": "Breakfast choice",
      "picture": "images/bfast3.jpg",
      "price": "4",
    },
    {
      "name": "African Breakfast",
      "picture": "images/bfast4.jpg",
      "price": "2",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProd(
            prodName: productList[index]["name"],
            prodPic: productList[index]["picture"],
            prodPrice: productList[index]["price"],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prodPic;
  final prodName;
  final prodPrice;

  SingleProd({this.prodPic, this.prodName, this.prodPrice});

  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prodName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    //passing the value of product to product details.
                      proddetail_name:prodName,
                    proddetail_pic: prodPic,
                    proddetail_price: prodPrice,
                  ))),
              child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prodName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text("\$$prodPrice"),
                    )),
                child: Image.asset(
                  prodPic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
