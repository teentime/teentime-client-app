import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/src/route.dart';
import 'package:teentime/widgets/login/custom_button.dart';
import 'package:teentime/widgets/login/custom_text_form_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController schoolEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isIdSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark01,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop(); // 뒤로가기 버튼 눌렀을 때 이전 페이지로 이동
          },
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: SvgPicture.asset(
              'assets/icons/back.svg',
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        title: const Text(
          "회원가입",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: AppColors.dark11,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.dark01,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        // 스크롤 가능하도록 SingleChildScrollView로 감싸줍니다.
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 48.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    labelText: "닉네임",
                    hintText: "닉네임을 입력하세요",
                    controller: nicknameController,
                  ),
                ),
                SizedBox(width: 8.w),
                CustomButton(
                  text: "중복확인",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 44.h),
            CustomTextFormField(
              labelText: "비밀번호",
              hintText: "비밀번호를 입력하세요",
              controller: passwordController,
            ),
            SizedBox(height: 44.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    labelText: "학교 등록",
                    hintText: "학교를 검색하세요",
                    controller: schoolController,
                  ),
                ),
                SizedBox(width: 8.w),
                CustomButton(
                  text: "검색하기",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 44.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    labelText: "학교 이메일",
                    hintText: "학교 이메일을 입력하세요",
                    controller: schoolEmailController,
                  ),
                ),
                SizedBox(width: 8.w),
                CustomButton(
                  text: "인증하기",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 44.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    labelText: "휴대폰 번호",
                    hintText: "휴대폰 번호를 입력하세요",
                    controller: phoneNumberController,
                  ),
                ),
                SizedBox(width: 8.w),
                CustomButton(
                  text: "인증하기",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 83.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isIdSaved = !_isIdSaved;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 24.w,
                    height: 24.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isIdSaved ? AppColors.dark12 : AppColors.main,
                    ),
                    child: Icon(
                      Icons.check,
                      size: 16.sp,
                      color: AppColors.dark11,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "개인정보 수집 및 이용 동의",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark07,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    // TODO: "자세히" 텍스트 클릭 시 동작 구현
                    // 예를 들어, 다이얼로그 또는 상세 정보 페이지를 띄울 수 있습니다.
                  },
                  child: const Text(
                    "자세히",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.main,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            SizedBox(
              width: 328.w,
              height: 48.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.main,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.login);
                },
                child: Text(
                  "회원가입",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.dark11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
