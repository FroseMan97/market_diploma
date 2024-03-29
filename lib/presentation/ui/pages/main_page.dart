import 'package:flutter/material.dart';
import 'package:market/presentation/bloc/main_bottom_navigation_bar_bloc.dart';
import 'package:market/presentation/ui/pages/profile_page.dart';
import 'package:market/presentation/ui/widgets/main_bottom_navigation_bar_widget.dart';
import 'basket_page.dart';
import 'catalog_page.dart';
import 'home_page.dart';
import 'liked_products_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainBottomNavigationBarBloc _mainBottomNavigationBarBloc;

  final bodyList = [
    HomePage('Подборка'),
    CatalogPage('Каталог'),
    BasketPage('Корзина'),
    LikedProductsPage('Избранное'),
    ProfilePage('Профиль')
  ];

  @override
  void initState() {
    _mainBottomNavigationBarBloc = MainBottomNavigationBarBloc();
    super.initState();
  }

  @override
  void dispose() {
    _mainBottomNavigationBarBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder<int>(
          initialData: _mainBottomNavigationBarBloc.defaultItem,
          stream: _mainBottomNavigationBarBloc.getMainNavBarItem,
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                title: Text(bodyList[snapshot.data].title),
              ),
              bottomNavigationBar: MainBottomNavigationBar(snapshot.data,
                  _mainBottomNavigationBarBloc.pickMainNavBarItem),
              body: IndexedStack(
                index: snapshot.data,
                children: bodyList,
              ),
            );
          }),
    );
  }
}
