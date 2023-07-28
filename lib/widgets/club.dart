import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/colors.dart';
import 'package:teentime/widgets/carousel_slider.dart';

class Club extends StatefulWidget {
  @override
  State<Club> createState() => _ClubState();
}

class _ClubState extends State<Club> {
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
      body: Container(
          child: Column(
        children: [ImageSlider()],
      )),
      backgroundColor: AppColors.dark01,
    );
  }
}
