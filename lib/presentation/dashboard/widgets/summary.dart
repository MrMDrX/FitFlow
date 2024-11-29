import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/presentation/dashboard/widgets/pie_chart.dart';
import 'package:fitflow/presentation/dashboard/widgets/scheduled.dart';
import 'package:fitflow/presentation/dashboard/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.cardBg,
      ),
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          SizedBox(height: 20),
          Chart(),
          Text(
            'Summary',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          SummaryDetails(),
          SizedBox(height: 40),
          Scheduled(),
        ],
      ),
    );
  }
}
