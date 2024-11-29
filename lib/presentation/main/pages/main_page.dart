import 'package:fitflow/core/helpers/responsive.dart';
import 'package:fitflow/presentation/dashboard/pages/dashboard_page.dart';
import 'package:fitflow/presentation/dashboard/widgets/summary.dart';
import 'package:fitflow/presentation/main/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenu(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Summary(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop) const Expanded(flex: 2, child: SideMenu()),
            const Expanded(flex: 7, child: DashboardPage()),
            if (isDesktop) const Expanded(flex: 3, child: Summary()),
          ],
        ),
      ),
    );
  }
}
