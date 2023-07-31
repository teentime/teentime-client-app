import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/recommanded_club_card.dart';

class RecommandedClubTab extends StatefulWidget {
  @override
  _RecommandedClubTabState createState() => _RecommandedClubTabState();
}

class _RecommandedClubTabState extends State<RecommandedClubTab>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '세상의 모든 덕질',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dark11,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '만화 / 애니메이션 ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.comic,
                        ),
                      ),
                      Text(
                        '동아리',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.dark11,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.dark12,
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/icons/refresh.svg',
                        width: 20.w, height: 20.h),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 36.0),
            child: SizedBox(
              height: 204.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, // RecommandedClubCard의 개수
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 0 : 8.w),
                    child: RecommandedClubCard(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
