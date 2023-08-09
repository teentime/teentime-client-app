import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class MeetingCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __MeetingCardState();
}

class __MeetingCardState extends State<MeetingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 148,
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 13.0),
      decoration: BoxDecoration(
        color: AppColors.dark01,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.4),
            blurRadius: 8.0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '모임 제목 (인원)',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.dark10,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/club_calendar.svg',
                width: 24,
                height: 24,
              ),
              const Text(
                '0월 0일 화요일 오후 7:40 (140분 간 진행)',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark07),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/club_location.svg',
                width: 24,
                height: 24,
              ),
              const Text(
                '00스튜디오',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark07),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/club_price.svg',
                width: 24,
                height: 24,
              ),
              const Text(
                '개인당 5,700원',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark07),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
