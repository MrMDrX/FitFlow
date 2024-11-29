import 'package:fitflow/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.cardBg,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 6),
          hintText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            size: 24,
            color: AppColors.menuItem,
          ),
        ),
      ),
    );
  }
}
