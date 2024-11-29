import 'package:fitflow/core/helpers/responsive.dart';
import 'package:fitflow/data/sources/health_details.dart';
import 'package:fitflow/presentation/dashboard/widgets/app_card.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCards extends StatelessWidget {
  const ActivityDetailsCards({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    final isMobile = Responsive.isMobile(context);
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: healthDetails.healthData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: isMobile ? 12 : 16,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) => AppCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 32,
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
