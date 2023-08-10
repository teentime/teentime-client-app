import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/club/board_selector.dart';

class NoticeCard extends StatefulWidget {
  @override
  _NoticeCardState createState() => _NoticeCardState();
}

class _NoticeCardState extends State<NoticeCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 247,
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
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '사용자명',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.dark07,
                    ),
                  )
                ],
              ),
              SvgPicture.asset(
                'assets/icons/notice_menu.svg',
                width: 24,
                height: 24,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '공지사항 제목입니다.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.dark11,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            '공지사항 내용입니다.',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: AppColors.dark05,
            ),
          ),
        ],
      ),
    );
  }
}
