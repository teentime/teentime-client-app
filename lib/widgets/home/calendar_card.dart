import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class CalendarCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __CalendarCardState();
}

class __CalendarCardState extends State<CalendarCard> {
  bool _isSend = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 69.h,
      padding: const EdgeInsets.fromLTRB(24.0, 14.0, 16.0, 14.0),
      decoration: BoxDecoration(
        color: AppColors.dark12,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            '1일',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.dark11,
            ),
          ),
          SizedBox(width: 24.w),
          SizedBox(
            width: 240.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '동아리명 · 시간 · 인원',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColors.dark05,
                      ),
                    ),
                    Text(
                      '일정 제목',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark11,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isSend = !_isSend;
                    });
                  },
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: AppColors.dark02,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: _isSend
                        ? SvgPicture.asset(
                            'assets/icons/calendar_filled_alarm.svg',
                            width: 24.w,
                            height: 24.h,
                          )
                        : SvgPicture.asset(
                            'assets/icons/calendar_alarm.svg',
                            width: 24.w,
                            height: 24.h,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
