import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/club/join_modal.dart';
import 'package:teentime/widgets/club/meeting_card.dart';

class Info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dark01,
      child: Stack(
        children: [
          ListView(
            // 변경점: ListView로 변경
            children: [
              Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.cover,
                width: 360.w,
                height: 130,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '동아리 이름',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark11,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          '서지원',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: AppColors.dark04,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        const SizedBox(
                          height: 12,
                          child: VerticalDivider(
                            color: AppColors.dark06,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        const Text(
                          '30명',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: AppColors.dark04,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        const SizedBox(
                          height: 12,
                          child: VerticalDivider(
                            color: AppColors.dark06,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        const Text(
                          '결성일 2023.00.00',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: AppColors.dark04,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      height: 120,
                      child: Text(
                        '소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.dark06,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '모임 일정',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark11,
                      ),
                    ),
                    const SizedBox(height: 8),
                    MeetingCard(),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 328.w,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: SizedBox(
                width: 328.w,
                height: 42,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.main,
                        AppColors.sub,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _showJoinModal(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "동아리 가입하기",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: AppColors.dark11,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 모달 창 띄우는 함수
  void _showJoinModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.5),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return JoinModal();
      },
    );
  }
}
