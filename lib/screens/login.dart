import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/custom_text_form_field.dart';
import 'package:teentime/widgets/login_menu_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  bool _isIdSaved = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // 유효성 검사가 통과하면 이 곳에서 백엔드와 통신하여 로그인 처리를 진행합니다.
      // _email과 _password 변수를 사용하여 사용자의 입력 정보를 가져올 수 있습니다.
      // 예: _email, _password를 백엔드로 전송하고 결과에 따라 로그인 성공 또는 실패를 처리합니다.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark01,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 147.w,
                height: 50.h,
              ),
              SizedBox(height: 48.h),
              CustomTextFormField(
                labelText: '이메일 혹은 전화번호',
                hintText: '이메일 혹은 전화번호를 입력해주세요.',
                controller: _usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '* 이메일 또는 전화번호를 입력해주세요';
                  }
                  // 유효성 검사
                  return null;
                },
                onSaved: (value) {
                  _username = value!;
                },
              ),
              SizedBox(height: 36.h),
              CustomTextFormField(
                labelText: '비밀번호',
                hintText: '비밀번호를 입력해주세요.',
                obscureText: true,
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '* 비밀번호를 입력해주세요';
                  }
                  // 유효성 검사
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  Text(
                    '아이디 저장',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: AppColors.dark07,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
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
                  onPressed: _submitForm,
                  child: Text(
                    "로그인",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dark11,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginMenuButton(
                    title: "아이디 찾기",
                    onTap: () {
                      // 아이디 찾기 페이지로 이동
                    },
                  ),
                  SizedBox(width: 6.w),
                  SizedBox(
                    height: 12.h,
                    child: const VerticalDivider(
                      color: AppColors.dark06,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  LoginMenuButton(
                    title: "비밀번호 찾기",
                    onTap: () {
                      // 비밀번호 찾기 페이지로 이동
                    },
                  ),
                  SizedBox(width: 6.w),
                  SizedBox(
                    height: 12.h,
                    child: const VerticalDivider(
                      color: AppColors.dark06,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  LoginMenuButton(
                    title: "회원가입",
                    onTap: () {
                      // 회원가입 페이지로 이동
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
