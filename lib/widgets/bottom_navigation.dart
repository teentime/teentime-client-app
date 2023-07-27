import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/colors.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Yo',
      style: optionStyle,
    ),
    Text(
      'Index 4: Yeah',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/icons/selected_home.svg',
                      height: 28, width: 28)
                  : SvgPicture.asset('assets/icons/home.svg',
                      height: 28, width: 28),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/icons/selected_school.svg',
                      height: 28, width: 28)
                  : SvgPicture.asset('assets/icons/school.svg',
                      height: 28, width: 28),
              label: '학교',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/icons/selected_club.svg',
                      height: 28, width: 28)
                  : SvgPicture.asset('assets/icons/club.svg',
                      height: 28, width: 28),
              label: '동아리',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/icons/selected_alarm.svg',
                      height: 28, width: 28)
                  : SvgPicture.asset('assets/icons/alarm.svg',
                      height: 28, width: 28),
              label: '알림',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? SvgPicture.asset('assets/icons/selected_mypage.svg',
                      height: 28, width: 28)
                  : SvgPicture.asset('assets/icons/mypage.svg',
                      height: 28, width: 28),
              label: '마이',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.dark11,
          unselectedItemColor: AppColors.dark06,
          backgroundColor: AppColors.dark01,
        ),
      ),
    );
  }
}
