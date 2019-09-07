import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SmallInfoProductWidget extends StatelessWidget {
  SmallInfoProductWidget(this.name, this.manufacter, this.price, this.image,
      {Key key})
      : super(key: key);

  final String name;
  final String manufacter;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(image),
          ),
          Text(
            manufacter,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        
          Text(
            name,
          ),
          SizedBox(height: 10,),
          Text('$price RUB'),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
