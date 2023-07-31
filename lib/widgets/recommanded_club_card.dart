import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';

class RecommandedClubCard extends StatefulWidget {
  @override
  _RecommandedClubCardState createState() => _RecommandedClubCardState();
}

class _RecommandedClubCardState extends State<RecommandedClubCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 204.h,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
              'assets/images/profile.png',
              width: 160.w,
              height: 89.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 4.0),
            child: Text(
              '동아리명',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.dark11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 11.0),
            child: Text(
              '동아리 소개 문구입니다.',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.dark06,
              ),
            ),
          ),
          SizedBox(
            width: 130.w,
            height: 36.h,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.main,
                    AppColors.sub,
                  ],
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {},
                child: Text(
                  "둘러보기",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark11,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
