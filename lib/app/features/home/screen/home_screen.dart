import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:order_up/app/features/home/widget/bottom_navigation_bar.dart';
import 'package:order_up/app/features/home/widget/list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Text('Home Screen'),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListItem()),
          ])),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
