import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0; // Add this line

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Schools',
        ),
      ],
      currentIndex: _selectedIndex, // Add this line
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Theme.of(context).colorScheme.onBackground,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index; // Add this line
        });
      },
    );
  }
}
