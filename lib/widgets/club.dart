import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/colors.dart';
import 'package:teentime/widgets/carousel_slider.dart';

class Club extends StatefulWidget {
  @override
  State<Club> createState() => _ClubState();
}

class _ClubState extends State<Club> {
  bool isClubTabSelected = true; // 내 동아리 탭이 선택된 상태인지 여부를 나타내는 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '이런 동아리는 어때요? 👀',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              // 검색 버튼이 눌렸을 때
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SvgPicture.asset('assets/icons/search.svg',
                  width: 24, height: 24),
            ),
          ),
        ],
        backgroundColor: AppColors.dark01,
        elevation: 0,
      ),
      body: Column(
        children: [
          ImageSlider(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClubTabSelected = true; // 내 동아리 탭 선택
                  });
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.w, 0, 8.w, 0),
                  child: Text(
                    '내 동아리',
                    style: TextStyle(
                      color: isClubTabSelected
                          ? AppColors.dark11
                          : AppColors.dark08,
                      fontSize: isClubTabSelected ? 18.sp : 16.sp,
                      fontWeight: isClubTabSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClubTabSelected = false; // 내 채팅방 탭 선택
                  });
                },
                child: Container(
                  child: Text(
                    '내 채팅방',
                    style: TextStyle(
                      color: isClubTabSelected
                          ? AppColors.dark08
                          : AppColors.dark11,
                      fontSize: isClubTabSelected ? 16.sp : 18.sp,
                      fontWeight: isClubTabSelected
                          ? FontWeight.normal
                          : FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: isClubTabSelected
                  ? Container(
                      // 첫 번째 탭 내용 (내 동아리)
                      child: Center(
                        child: Text('내 동아리 탭'),
                      ),
                    )
                  : Container(
                      // 두 번째 탭 내용 (내 채팅방)
                      child: Center(
                        child: Text('내 채팅방 탭'),
                      ),
                    ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.dark01,
    );
  }
}
