import 'package:fitflow/presentation/main/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(flex: 2, child: SizedBox(child: SideMenu())),
            Expanded(flex: 7, child: Container(color: Colors.green)),
            Expanded(flex: 3, child: Container(color: Colors.orange)),
          ],
        ),
      ),
    );
  }
}
