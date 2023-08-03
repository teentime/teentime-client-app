import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/calendar.dart';
import 'package:teentime/widgets/home/calendar_card.dart';
import 'package:teentime/widgets/home/meal_card.dart';
import 'package:teentime/widgets/home/post_card.dart';
import 'package:teentime/widgets/home/todo_card.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __HomeState();
}

class __HomeState extends State<Home> {
  bool isNewTabSelected = true;
  void onTabSelected(bool isSelected) {
    setState(() {
      isNewTabSelected = isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark01,
      appBar: AppBar(
        title: Text(
          '안녕하세요, 김틴타님!',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.dark11,
          ),
        ),
        backgroundColor: AppColors.dark01,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // SingleChildScrollView로 감싸기
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '이번 주 급식',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark10),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 260.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: index == 0 ? 0 : 8.w),
                      child: MealCard(),
                    );
                  },
                ),
              ),
              SizedBox(height: 48.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '오늘의 할 일',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark10),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: AppColors.dark12,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset(
                          'assets/icons/todo_plus.svg',
                          width: 16.w,
                          height: 16.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              TodoCard(),
              SizedBox(height: 8.h),
              TodoCard(),
              SizedBox(height: 8.h),
              TodoCard(),
              SizedBox(height: 48.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onTabSelected(true);
                    },
                    child: Container(
                      child: Text(
                        '새 일정',
                        style: TextStyle(
                          color: isNewTabSelected
                              ? AppColors.dark10
                              : AppColors.dark08,
                          fontSize: isNewTabSelected ? 18.sp : 16.sp,
                          fontWeight: isNewTabSelected
                              ? FontWeight.w500
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  GestureDetector(
                    onTap: () {
                      onTabSelected(false);
                    },
                    child: Text(
                      '전체',
                      style: TextStyle(
                        color: isNewTabSelected
                            ? AppColors.dark08
                            : AppColors.dark10,
                        fontSize: isNewTabSelected ? 16.sp : 18.sp,
                        fontWeight: isNewTabSelected
                            ? FontWeight.normal
                            : FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Calendar(),
              SizedBox(height: 18.h),
              CalendarCard(),
              SizedBox(height: 8.h),
              CalendarCard(),
              SizedBox(height: 48.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '새 글',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark10),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              PostCard(),
              SizedBox(height: 12.h),
              PostCard(),
            ],
          ),
        ),
      ),
    );
  }
}
