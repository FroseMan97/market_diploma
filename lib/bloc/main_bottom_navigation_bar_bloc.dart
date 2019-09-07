import 'dart:async';

import 'package:market/bloc/base/base_bloc.dart';
import 'package:market/ui/widgets/main_bottom_navigation_bar_widget.dart';
import 'package:rxdart/rxdart.dart';

class MainBottomNavigationBarBloc extends BaseBloc {
  var defaultItem = MainBottomNavigationBarItems.PRODUCTS_PAGE;
  final BehaviorSubject _mainNavBarSubject =
      BehaviorSubject<MainBottomNavigationBarItems>();
  Stream get getMainNavBarItem => _mainNavBarSubject.stream;

  void pickMainNavBarItem(int i) {
    switch (i) {
      case 0:
        _mainNavBarSubject.sink.add(MainBottomNavigationBarItems.PRODUCTS_PAGE);
        break;
      case 1:
        _mainNavBarSubject.sink
            .add(MainBottomNavigationBarItems.BARCODE_SCAN_PAGE);
        break;
      case 2:
        _mainNavBarSubject.sink.add(MainBottomNavigationBarItems.BASKET_PAGE);
        break;
      case 3:
        _mainNavBarSubject.sink
            .add(MainBottomNavigationBarItems.LIKED_PRODUCTS_PAGE);
        break;
      case 4:
        _mainNavBarSubject.sink.add(MainBottomNavigationBarItems.PROFILE_PAGE);
        break;
    }
  }

  @override
  void dispose() {
    _mainNavBarSubject.close();
    super.dispose();
  }
}
