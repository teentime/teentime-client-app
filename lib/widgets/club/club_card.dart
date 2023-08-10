import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class ClubCard extends StatefulWidget {
  @override
  _ClubCardState createState() => _ClubCardState();
}

class _ClubCardState extends State<ClubCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/profile.png',
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '카테고리',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColors.dark07),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text(
                '동아리명',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.dark11),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/person.svg',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Text(
                      '00명',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.dark06),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset(
                        'assets/icons/location.svg',
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                    Text(
                      '장소',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.dark06),
                    ),
                  ],
                ))
          ],
        )
      ]),
    );
  }
}
