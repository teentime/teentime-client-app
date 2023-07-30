import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/colors.dart';

class MyTab extends StatelessWidget {
  final bool isClubTabSelected;
  final Function(bool) onTabSelected;

  MyTab({required this.isClubTabSelected, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onTabSelected(true);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(16.w, 0, 8.w, 0),
            child: Text(
              '내 동아리',
              style: TextStyle(
                color: isClubTabSelected ? AppColors.dark11 : AppColors.dark08,
                fontSize: isClubTabSelected ? 18.sp : 16.sp,
                fontWeight:
                    isClubTabSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onTabSelected(false);
          },
          child: Text(
            '내 채팅방',
            style: TextStyle(
              color: isClubTabSelected ? AppColors.dark08 : AppColors.dark11,
              fontSize: isClubTabSelected ? 16.sp : 18.sp,
              fontWeight:
                  isClubTabSelected ? FontWeight.normal : FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
