import 'package:flutter/material.dart';

import 'package:paradse_hotel/components/cart_compnts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.indigo,
        title: Text("My Cart"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      //calling the cart compnts page
      body: Cart_compnts(),

      bottomNavigationBar: Container(
        color: Colors.cyan,
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text("Total amount"),
              subtitle: Text("\$200"),
            )
            ),
            Expanded(child: MaterialButton(onPressed: (){},
              child: Text("Check Out",style: TextStyle(color: Colors.white),),
              color: Colors.deepOrangeAccent,
           ),)
          ],
        ),
      ),
    );

  }
}
