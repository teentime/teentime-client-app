import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class BoardSelector extends StatefulWidget {
  @override
  _BoardSelectorState createState() => _BoardSelectorState();
}

class _BoardSelectorState extends State<BoardSelector> {
  bool _isExpanded = false;
  bool _isPopularSelected = true; // Default: Real-time popular
  String _arrowIcon = 'assets/icons/down.svg'; // Default arrow icon

  void _toggleDropdown() {
    setState(() {
      _isExpanded = !_isExpanded;
      _arrowIcon =
          _isExpanded ? 'assets/icons/up.svg' : 'assets/icons/down.svg';
    });
  }

  void _selectOption(bool isPopular) {
    setState(() {
      _isPopularSelected = isPopular;
      _isExpanded = false;
      _arrowIcon = 'assets/icons/down.svg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      color: AppColors.dark01,
      child: Column(
        children: [
          InkWell(
            onTap: _toggleDropdown,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    _isPopularSelected ? '실시간 인기순' : '최신순',
                    style: const TextStyle(color: AppColors.dark06),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(_arrowIcon, width: 24, height: 24),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            SizedBox(
              width: 360.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => _selectOption(true),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: const Text(
                        '실시간 인기순',
                        style: TextStyle(color: AppColors.dark06),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _selectOption(false),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: const Text(
                        '최신순',
                        style: TextStyle(color: AppColors.dark06),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
