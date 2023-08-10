import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class BoardCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __BoardCardState();
}

class __BoardCardState extends State<BoardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 179,
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 13.0),
      decoration: const BoxDecoration(
        color: AppColors.dark01,
        border: Border(
          bottom: BorderSide(
            color: AppColors.dark12,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
              SizedBox(width: 12.w),
              SizedBox(
                width: 285.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '사용자명',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.dark11,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  '동아리명',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.dark06,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '0월 0일 수요일 오전 8:12',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.dark04,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/board_menu.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            '제목입니다.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.dark11,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.normal,
              color: AppColors.dark08,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'assets/icons/post_heart.svg',
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(width: 4.w),
              Text(
                '50+',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark10),
              ),
              SizedBox(width: 8.w),
              SvgPicture.asset(
                'assets/icons/post_comment.svg',
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(width: 4.w),
              Text(
                '50+',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
