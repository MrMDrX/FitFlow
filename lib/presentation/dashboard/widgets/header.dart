import 'package:fitflow/core/constants/app_assets.dart';
import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/core/helpers/responsive.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.menu,
                  color: AppColors.menuItem,
                  size: 24,
                ),
              ),
            ),
          ),
        if (!Responsive.isMobile(context))
          Expanded(
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
          ),
        if (Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: AppColors.menuItem,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                borderRadius: BorderRadius.circular(32),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      AppAssets.avatar,
                      fit: BoxFit.cover,
                      width: 32,
                    ),
                  ),
                ),
              )
            ],
          ),
      ],
    );
  }
}
