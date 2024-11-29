import 'package:fitflow/core/helpers/responsive.dart';
import 'package:fitflow/presentation/dashboard/widgets/activity_details_cards.dart';
import 'package:fitflow/presentation/dashboard/widgets/bar_graph.dart';
import 'package:fitflow/presentation/dashboard/widgets/header.dart';
import 'package:fitflow/presentation/dashboard/widgets/line_chart_card.dart';
import 'package:fitflow/presentation/dashboard/widgets/summary.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        const SizedBox(height: 16),
        const Header(),
        const SizedBox(height: 16),
        const ActivityDetailsCards(),
        const SizedBox(height: 16),
        const LineChartCard(),
        const SizedBox(height: 16),
        const BarGraph(),
        const SizedBox(height: 16),
        if (Responsive.isTablet(context)) const Summary(),
        const SizedBox(height: 8),
      ],
    );
  }
}
