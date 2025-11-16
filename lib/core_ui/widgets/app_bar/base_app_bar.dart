import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test1/core_ui/theme/app_typography.dart';
import 'package:test1/core_ui/widgets/app_bar/base_back_button.dart';

import '../../assets/app_colors.dart';

class BaseAppBar extends StatelessWidget {
  final String title;
  final BuildContext context;
  final Color? backgroundColor;
  final List<Widget>? actions;

  const BaseAppBar({
    super.key,
    required this.context,
    required this.title,
    this.backgroundColor = AppColors.white,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return IntrinsicHeight(
      child: OverflowBox(
        maxWidth: screenWidth,
        minWidth: screenWidth,
        alignment: Alignment.center,
        child: Container(
          width: screenWidth,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(color: backgroundColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SafeArea(bottom: false, child: SizedBox()),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BaseBackButton(onBack: () {
                    context.router.pop();
                  }),
                  const SizedBox(width: 10),
                  Expanded(
                      child: Text(title, style: AppTypography.titleMedium)
                  ),
                  if (actions != null) ...actions!,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
