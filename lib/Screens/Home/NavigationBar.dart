import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/cart_Screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/ProfileScreen.dart';

class HomeWithStackedItems extends StatefulWidget {
  @override
  _HomeWithStackedItemsState createState() => _HomeWithStackedItemsState();
}

class _HomeWithStackedItemsState extends State<HomeWithStackedItems> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Home(),
          Mycart(),
          Center(child: Text('Pending')),
          ProfileScreen(),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
