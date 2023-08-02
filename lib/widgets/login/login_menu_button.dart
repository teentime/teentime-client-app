import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';

class LoginMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const LoginMenuButton({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.dark06,
        ),
      ),
    );
  }
}
