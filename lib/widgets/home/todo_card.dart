import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class TodoCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __TodoCardState();
}

class __TodoCardState extends State<TodoCard> {
  bool _isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 40.h,
      padding: const EdgeInsets.fromLTRB(12.0, 11.0, 8.0, 10.0),
      decoration: BoxDecoration(
        color: AppColors.dark12,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isCompleted = !_isCompleted;
              });
            },
            child: Container(
              width: 16.w,
              height: 16.h,
              decoration: BoxDecoration(
                color: _isCompleted ? AppColors.main : AppColors.dark03,
                borderRadius: BorderRadius.circular(4),
              ),
              child: _isCompleted
                  ? Icon(
                      Icons.check,
                      size: 16.sp,
                      color: AppColors.dark11,
                    )
                  : null,
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            '할 일',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: _isCompleted ? AppColors.dark04 : AppColors.dark10,
              decoration: _isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          SizedBox(width: 228.w),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/todo_menu.svg',
              width: 24.w,
              height: 24.h,
            ),
          )
        ],
      ),
    );
  }
}
