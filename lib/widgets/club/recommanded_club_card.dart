import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';

class RecommandedClubCard extends StatefulWidget {
  @override
  _RecommandedClubCardState createState() => _RecommandedClubCardState();
}

class _RecommandedClubCardState extends State<RecommandedClubCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
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
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
              'assets/images/profile.png',
              width: 160.w,
              height: 89,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 12.0, 0, 4.0),
            child: Text(
              '동아리명',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.dark11,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 11.0),
            child: Text(
              '동아리 소개 문구입니다.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: AppColors.dark06,
              ),
            ),
          ),
          SizedBox(
            width: 130,
            height: 36,
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  "둘러보기",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark11,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
