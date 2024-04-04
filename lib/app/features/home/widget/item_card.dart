import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 100, // specify the height
              width: 100, // specify the width
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/food.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20.0), // adjust the padding as needed
            title: Text('Item Name', textAlign: TextAlign.center),
            subtitle: Text('Item Description', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
