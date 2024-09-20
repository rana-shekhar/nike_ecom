

import 'package:flutter/material.dart';
import 'package:nike/components/bottom_nav_bar.dart';

import 'package:nike/pages/shop_page.dart';

import 'cart_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateButtonBar (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List <Widget> _pages =[
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateButtonBar(index),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.grey[300],

    );
  }
}
