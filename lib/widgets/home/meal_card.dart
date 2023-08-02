import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class MealCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __MealCardState();
}

class __MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186.w,
      height: 244.h,
      decoration: BoxDecoration(
        color: AppColors.dark12,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '6월 30일 금',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColors.dark07,
                ),
              ),
              SvgPicture.asset(
                'assets/icons/filled_star.svg',
                width: 24.w,
                height: 24.h,
              ),
              Text(
                '3.1',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColors.dark09,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            '햄김치마요덮밥\n유부장국\n과일샐러드\n새송이파프리카볶음\n깍두기\n핫도그',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.dark10,
                height: 1.4.h),
          ),
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.main, AppColors.sub],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    '리뷰 작성',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: AppColors.dark11,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
