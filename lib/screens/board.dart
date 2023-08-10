import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/club/boardCard.dart';
import 'package:teentime/widgets/club/board_selector.dart';
import 'package:teentime/widgets/club/join_modal.dart';
import 'package:teentime/widgets/club/meeting_card.dart';
import 'package:teentime/widgets/club/notice_card.dart';

class Board extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      color: AppColors.dark01,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      '공지사항',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.dark11),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/icons/notice.png',
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
                SvgPicture.asset(
                  'assets/icons/notice_detail.svg',
                  width: 20,
                  height: 20,
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 100,
            padding: const EdgeInsets.only(left: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 0 : 8), // 첫 번째 아이템은 간격을 주지 않습니다.
                  child: NoticeCard(),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 360.w,
            height: 8,
            color: AppColors.dark12,
          ),
          BoardSelector(),
          BoardCard(),
          BoardCard(),
          BoardCard(),
          BoardCard(),
        ],
      ),
    );
  }
}
