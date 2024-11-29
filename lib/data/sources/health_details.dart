import 'package:fitflow/core/constants/app_assets.dart';
import 'package:fitflow/data/models/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(
      icon: AppAssets.burn,
      value: "395",
      title: "Calories burned",
    ),
    HealthModel(
      icon: AppAssets.steps,
      value: "12,983",
      title: "Steps",
    ),
    HealthModel(
      icon: AppAssets.distance,
      value: "7km",
      title: "Distance",
    ),
    HealthModel(
      icon: AppAssets.sleep,
      value: "7h30m",
      title: "Sleep",
    ),
  ];
}
