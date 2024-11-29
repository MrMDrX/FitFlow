import 'package:fitflow/presentation/dashboard/pages/dashboard_page.dart';
import 'package:fitflow/presentation/dashboard/widgets/summary.dart';
import 'package:fitflow/presentation/main/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 2, child: SideMenu()),
            Expanded(flex: 7, child: DashboardPage()),
            Expanded(flex: 3, child: Summary()),
          ],
        ),
      ),
    );
  }
}
