import 'package:flutter/material.dart';

class MainBottomNavigationBar extends BottomNavigationBar {
  static var _type = BottomNavigationBarType.fixed;
  static var _showSelectedLabels = false;
  static var _showUnselectedLabels = false;
  static var _selectedItemColor = Colors.red;
  static var _unselectedItemColor = Colors.black;
  static var _items = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.storage,
        ),
        title: new Text('')),
        BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
        ),
        title: new Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_basket,
        ),
        title: new Text('')),
         BottomNavigationBarItem(
        icon: Icon(
          Icons.star,
        ),
        title: new Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.supervisor_account,
        ),
        title: new Text('')),
  ];

  MainBottomNavigationBar(int _currentIndex, void Function(int) _onTap)
      : super(
        unselectedItemColor:_unselectedItemColor,
            selectedItemColor: _selectedItemColor,
            currentIndex: _currentIndex,
            items: _items,
            type: _type,
            showSelectedLabels: _showSelectedLabels,
            showUnselectedLabels: _showUnselectedLabels,
            onTap: _onTap);
}