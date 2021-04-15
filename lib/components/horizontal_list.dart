import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/lemon_chicken.jpeg',
            image_caption: "LemonChicken",
          ),
          Category(
            image_caption: "Chicken Nudget",
            image_location: 'images/chicken_nudget.jpeg',
          ),
          Category(
            image_caption: "Imperial Chicken",
            image_location: 'images/imperial_chicken.jpeg',
          ),
          Category(
            image_caption: "Kungpao Chicken",
            image_location: 'images/kungpao_chicken.jpeg',
          ),
          Category(
            image_caption: "Choy sum",
            image_location: 'images/choy_sum.jpeg',
          ),


        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  @override
  final String image_location;
  final String image_caption;
  //constructor
  Category({this.image_caption,
    this.image_location});
  build(BuildContext context) {

    return Padding(padding: const EdgeInsets.all(0.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 80.0,
        child: ListTile(
          title: Image.asset(image_location,width: 100.0,
                                            height: 80.0),
          subtitle:Container(
            alignment: Alignment.topCenter,
            child:  Text(image_caption,style: TextStyle(fontSize: 9.0),),
          )
        ),
      ),
    ),);
  }
}
