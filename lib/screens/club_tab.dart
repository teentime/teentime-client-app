import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/screens/board.dart';
import 'package:teentime/screens/info.dart';
import 'package:teentime/src/colors.dart';

class ClubTab extends StatefulWidget {
  @override
  _ClubTabState createState() => _ClubTabState();
}

class _ClubTabState extends State<ClubTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: SvgPicture.asset(
              'assets/icons/back.svg',
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        title: const Text(
          "동아리 이름",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: AppColors.dark11,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              // 첫 번째 버튼을 눌렀을 때 수행할 작업
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: SvgPicture.asset(
                'assets/icons/share.svg',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(
                'assets/icons/sub_menu.svg',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.dark01,
        shadowColor: Colors.transparent,
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.dark11,
          unselectedLabelColor: AppColors.dark08,
          indicatorColor: AppColors.dark11,
          tabs: [
            Tab(
              child: Text(
                '정보',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Tab(
              child: Text(
                '게시판',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Tab(
              child: Text(
                '사진첩',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Tab(
              child: Text(
                '채팅',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Tab(
              child: Text(
                '마이',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Info(),
          Board(),
          Center(child: Text('사진첩 화면')),
          Center(child: Text('채팅 화면')),
          Center(child: Text('마이 화면')),
        ],
      ),
    );
  }
}
