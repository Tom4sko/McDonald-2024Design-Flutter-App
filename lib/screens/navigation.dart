import 'package:flutter/material.dart';
import 'package:mcdonaldclone/screens/cupons_screen.dart';
import 'package:mcdonaldclone/screens/news_screen.dart';
import 'package:mcdonaldclone/screens/options_screen.dart';
import 'package:mcdonaldclone/screens/order_screen.dart';
import 'package:mcdonaldclone/screens/restaurants_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

int _currentIndex = 0;
final _screens = const [
  News(),
  Cupons(),
  Order(),
  Restaurants(),
  Options(),
];

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: 'Novinky',),
        BottomNavigationBarItem(icon: Icon(Icons.home_mini, color: Colors.grey,), label: 'Kupóny'),
        BottomNavigationBarItem(icon: Icon(Icons.dining_outlined, color: Colors.grey,), label: 'Objednať'),
        BottomNavigationBarItem(icon: Icon(Icons.add_location_alt_outlined, color: Colors.grey,), label: 'Reštaurácie'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz, color: Colors.grey,), label: 'Viac'),
      ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}