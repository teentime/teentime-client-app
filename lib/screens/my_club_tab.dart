import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/src/route.dart';

class MyClubTab extends StatelessWidget {
  const MyClubTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 32.0),
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Row(
          children: [
            if (index != 0) SizedBox(width: 12.w), // 첫 Column 이후에만 간격 추가
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.clubTab);
              },
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover,
                      width: 52,
                      height: 52,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 70.w,
                    child: Text(
                      '동아리 이름',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp,
                        color: AppColors.dark08,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
