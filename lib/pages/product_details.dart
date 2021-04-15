import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final proddetail_name;
  final proddetail_pic;
  final proddetail_price;

  ProductDetails(
      {this.proddetail_name, this.proddetail_pic, this.proddetail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.indigo,
        title: Text("Paradise Hotel"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(children: <Widget>[
        new Container(
          height: 300.0,
          child: GridTile(
              child: Container(
                color: Colors.black12,
                child: Image.asset(widget.proddetail_pic),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    (widget.proddetail_name),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$${widget.proddetail_price}"),
                      )
                    ],
                  ),
                ),
              )),
        ),
        //*******************Buttons*********************
        Row(
          children: <Widget>[
            //*********************Quantity Button**************************
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text("Hello there"),
                          content:
                              Text("Place an order to get your favourite meal"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pop(context); //closing alert dialog
                              },
                              child: new Text("Close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.lightGreenAccent,
                textColor: Colors.black87,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Quantity"),
                    ),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
        ),

        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Hello Customer!!"),
                            content:
                                Text("The meal will be dropped at your place"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pop(context); //closing alert dialog
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.lightGreenAccent,
                  minWidth: 15.0,
                  textColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Order"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
        new ListTile(
          title: Text(
            "Health Benefits of your choice meal",
            style: TextStyle(color: Colors.blueAccent, fontSize: 20.0),
          ),
          subtitle: Text(
            "Healthy smile"
            "\nStrong bones"
            "\n Upright walking style"
            "\nNo tummy!!",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
        Divider(),
        Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(8.0, 5.0, 5.0, 5.0)),
            Text("Product Condition: ",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15.0,
                  fontWeight: (FontWeight.bold),
                )),
            Padding(padding: EdgeInsets.all(4.0)),
            Text("Ready")
          ],
        ),
        Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)),
            Text("Product Availability: ",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15.0,
                  fontWeight: (FontWeight.bold),
                )),
            Padding(padding: EdgeInsets.all(4.0)),
            Text("Ready")
          ],
        ),
        Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)),
            Text("Product Condition: ",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15.0,
                  fontWeight: (FontWeight.bold),
                )),
            Padding(padding: EdgeInsets.all(4.0)),
            Text("Ready")
          ],
        )
      ]),
    );
  }
}
