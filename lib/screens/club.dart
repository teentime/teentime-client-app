import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/screens/recommanded_club_tab.dart';
import 'package:teentime/screens/subject_search.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/screens/carousel_slider.dart';
import 'package:teentime/screens/my_club_tab.dart';
import 'package:teentime/screens/my_tab.dart';
import 'package:teentime/screens/subject_tab.dart';

class Club extends StatefulWidget {
  const Club({super.key});

  @override
  State<Club> createState() => _ClubState();
}

class _ClubState extends State<Club> {
  bool isClubTabSelected = true; // 내 동아리 탭이 선택된 상태인지 여부

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '이런 동아리는 어때요? 👀',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: AppColors.dark11),
        ),
        actions: [
          InkWell(
            onTap: () {
              // 검색 버튼이 눌렸을 때
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SvgPicture.asset('assets/icons/search.svg',
                  width: 24, height: 24),
            ),
          ),
        ],
        backgroundColor: AppColors.dark01,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageSlider(),
            MyTab(
              isClubTabSelected: isClubTabSelected,
              onTabSelected: (isSelected) {
                setState(() {
                  isClubTabSelected = isSelected;
                });
              },
            ),
            SizedBox(
              height: 132.h,
              child:
                  isClubTabSelected ? const MyClubTab() : const Text('내 채팅방 탭'),
            ),
            SubjectTab(),
            RecommandedClubTab(),
            SubjectSearch(),
          ],
        ),
      ),
      backgroundColor: AppColors.dark01,
    );
  }
}
