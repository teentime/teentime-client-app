import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/home/meal_card.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __HomeState();
}

class __HomeState extends State<Home> {
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 48.0),
                child: SizedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
