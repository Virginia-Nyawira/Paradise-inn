import 'package:flutter/material.dart';

class Cart_compnts extends StatefulWidget {
  @override
  _Cart_compntsState createState() => _Cart_compntsState();
}

class _Cart_compntsState extends State<Cart_compnts> {
  var products_list = [
    {
      "name": "Vegetable Suey",
      "picture": "images/vegetable_suey.jpeg",
      "price": "8",
      "Quantity": "4",
    },
    {
      "name": "Orange Chicken",
      "picture": "images/orange_chicken.jpeg",
      "price": "7",
      "Quantity": "3",
    },
    {
      "name": "Hamburger",
      "picture": "images/hamburger.jpeg",
      "price": "2",
      "Quantity": "4",
    },
    {
      "name": "Chicken Nudget",
      "picture": "images/chicken_nudget.jpeg",
      "price": "3",
      "Quantity": "5",
    },
    {
      "name": "Breakfast choice",
      "picture": "images/bfast3.jpg",
      "price": "4",
      "Quantity": "6",
    },
    {
      "name": "African Breakfast",
      "picture": "images/bfast4.jpg",
      "price": "2",
      "Quantity": "7",
    }
  ];

  @override
  Widget build(BuildContext context) {
    //automatically generates a list
    return ListView.builder(
        itemCount: products_list.length,
        itemBuilder: (context, index) {
          return Single_cart_prod(
            cartprodName: products_list[index]["name"],
            cartprodPic: products_list[index]["picture"],
            cartprodPrice: products_list[index]["price"],
            cartprodQuantity: products_list[index]["Quantity"],
          );
        });
  }
}

class Single_cart_prod extends StatelessWidget {
  @override
  final cartprodPic;
  final cartprodName;
  final cartprodPrice;
  final cartprodQuantity;

  const Single_cart_prod(
      {Key key,
      this.cartprodPic,
      this.cartprodName,
      this.cartprodPrice,
      this.cartprodQuantity})
      : super(key: key);

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cartprodPic,
          width: 100.0,
          height: 100.0,
        ),
        title: Text(cartprodName),
        subtitle: Column(
          children: <Widget>[
            //row inside a column
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("Quantity: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("$cartprodQuantity"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Price: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("\$$cartprodPrice"),
                )
              ],
            )
          ],

        ),
        /*trailing: Column(
          children: <Widget>[
            IconButton(icon:(Icon(Icons.arrow_drop_up)), onPressed: (){}),
            //shld be for product quantity
           // Text("6"),
            IconButton(icon:(Icon(Icons.arrow_drop_down)), onPressed: (){})
          ],
        )*/
        ),
      );

  }
}
