import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';

class SubjectTab extends StatefulWidget {
  @override
  _SubjectTabState createState() => _SubjectTabState();
}

class _SubjectTabState extends State<SubjectTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  List<String> tabTitles = [
    '전체',
    '운동 / 스포츠',
    '인문학 / 책 / 글',
    '외국 / 언어',
    '봉사활동',
    '게임 / 오락',
    '요리',
    '댄스',
    '기타'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTitles.length, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      child: ListView.separated(
        padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
        scrollDirection: Axis.horizontal,
        itemCount: tabTitles.length,
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          bool isSelected = _selectedTabIndex == index;
          return GestureDetector(
            onTap: () {
              // 탭이 클릭되면 해당 인덱스의 페이지로 이동하도록 구현
              _tabController.animateTo(index);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.dark11 : AppColors.dark12,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  tabTitles[index],
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    color: isSelected ? AppColors.dark01 : AppColors.dark06,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
