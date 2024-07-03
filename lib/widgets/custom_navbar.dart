import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';

NavigationBar customNavBar(BuildContext context) {
  return NavigationBar(
    onDestinationSelected: (int index) {
      switch (index) {
        case 0:
          context.go("/home");
          break;
        case 1:
          context.go("/branches");
          break;
        case 2:
          context.go("/discount");
          break;
        case 3:
          context.go("/price");
          break;
        case 4:
          context.go("/contacts");
          break;
      }
    },
    selectedIndex: 4,
    backgroundColor: backroundGrey,
    // animationDuration: Duration.zero,
    destinations: const [
      NavigationDestination(
        icon: Icon(
          Icons.home,
          color: greenMain,
        ),
        label: 'Главная',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.location_on,
          color: greenMain,
        ),
        label: 'Филиалы',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.discount,
          color: greenMain,
        ),
        label: 'Акции',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.menu_book,
          color: greenMain,
        ),
        label: 'Прайс',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.phone,
          color: greenMain,
        ),
        label: 'Контакты',
      ),
    ],
  );
}
