import'package:flutter/material.dart';

import '../../enums/drawer_route.dart';

class DrawerItemModel {
  final String name;
  final IconData icon;
  final NavigationDrawerRoute page;

  DrawerItemModel({
    required this.name,
    required this.icon,
    required this.page,
  });

  static List<DrawerItemModel> drawerMenuList = [
    DrawerItemModel(
      name: 'Dark Theme',
      icon: Icons.message_outlined,
      page: NavigationDrawerRoute.rooms,
    ),
    DrawerItemModel(
      name: 'About',
      icon: Icons.book_outlined,
      page: NavigationDrawerRoute.learn,
    ),
    DrawerItemModel(
      name: 'Privacy Policy',
      icon: Icons.book_outlined,
      page: NavigationDrawerRoute.learn,
    ),
    DrawerItemModel(
      name: 'Log out',
      icon: Icons.logout,
      page: NavigationDrawerRoute.logout,
    ),
  ];
}
