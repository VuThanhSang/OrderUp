import 'package:flutter/material.dart';
import 'package:order_up/app/features/home/widget/item_card.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        if (index >= 10) {
          return const SizedBox.shrink(); // or return a placeholder widget
        }
        return Padding(
          padding:
              const EdgeInsets.only(right: 10.0), // adjust the value as needed
          child: SizedBox(
            width:
                MediaQuery.of(context).size.width * 0.5, // or any other width
            child: ItemCard(),
          ),
        );
      },
    );
  }
}
