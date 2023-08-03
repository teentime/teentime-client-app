import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class PostCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __PostCardState();
}

class __PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 182.h,
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 13.0),
      decoration: BoxDecoration(
        color: AppColors.dark01, // 배경색을 지정해야 그림자와 경계가 분명해집니다.
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
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                  width: 40.w,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 12.w),
              SizedBox(
                width: 244.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 143.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '사용자명',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.dark11,
                                ),
                              ),
                              SizedBox(width: 7.w),
                              Text(
                                '동아리명',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.dark06,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '0월 0일 수요일 오전 8:12',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.dark04,
                          ),
                        ),
                      ],
                    ),
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
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            '제목입니다.',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.dark11,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            '내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.normal,
              color: AppColors.dark08,
            ),
          ),
          SizedBox(height: 4.h),
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
                    fontSize: 14.sp,
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
                    fontSize: 14.sp,
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
