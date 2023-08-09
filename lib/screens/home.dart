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
        title: const Text(
          '안녕하세요, 김틴타님!',
          style: TextStyle(
            fontSize: 20,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '이번 주 급식',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark10),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 244,
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
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '오늘의 할 일',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark10),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: AppColors.dark12,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset(
                          'assets/icons/todo_plus.svg',
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13),
              TodoCard(),
              const SizedBox(height: 8),
              TodoCard(),
              const SizedBox(height: 8),
              TodoCard(),
              const SizedBox(height: 48),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onTabSelected(true);
                    },
                    child: Text(
                      '새 일정',
                      style: TextStyle(
                        color: isNewTabSelected
                            ? AppColors.dark10
                            : AppColors.dark08,
                        fontSize: isNewTabSelected ? 18 : 16,
                        fontWeight: isNewTabSelected
                            ? FontWeight.w500
                            : FontWeight.normal,
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
                        fontSize: isNewTabSelected ? 16 : 18,
                        fontWeight: isNewTabSelected
                            ? FontWeight.normal
                            : FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Calendar(),
              const SizedBox(height: 18),
              CalendarCard(),
              const SizedBox(height: 8),
              CalendarCard(),
              const SizedBox(height: 48),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '새 글',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark10),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              PostCard(),
              const SizedBox(height: 12),
              PostCard(),
            ],
          ),
        ),
      ),
    );
  }
}
