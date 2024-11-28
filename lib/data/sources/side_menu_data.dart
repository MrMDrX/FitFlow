import 'package:fitflow/data/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home_rounded, title: 'Dashboard'),
    MenuModel(icon: Icons.person_rounded, title: 'Profile'),
    MenuModel(icon: Icons.run_circle_rounded, title: 'Exersice'),
    MenuModel(icon: Icons.settings_rounded, title: 'Settings'),
    MenuModel(icon: Icons.history_rounded, title: 'History'),
    MenuModel(icon: Icons.logout_rounded, title: 'SignOut'),
  ];
}
