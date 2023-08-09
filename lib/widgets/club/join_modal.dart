import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';
import 'package:teentime/widgets/club/join_input.dart';

class JoinModal extends StatefulWidget {
  @override
  _JoinModalState createState() => _JoinModalState();
}

class _JoinModalState extends State<JoinModal> {
  bool _isValidJoinName = false;
  bool _isValidGreeting = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Form(
          child: Container(
            width: 328.w,
            height: 389,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.dark01,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 297.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '프로필 작성',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark11),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: SvgPicture.asset(
                            'assets/icons/x.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/images/profile.png',
                              fit: BoxFit.cover,
                              width: 56,
                              height: 56,
                            ),
                          ),
                          Positioned(
                            bottom: -6.h,
                            right: -6.w,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 24,
                                height: 24,
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.dark02,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/camera.svg',
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 17.w),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: JoinInput(
                            hintText: '활동명을 입력해주세요',
                            completeText: '사용 가능한 활동명입니다.',
                            errorText: '활동명을 입력해주세요',
                            maxLength: 10,
                            onValidChanged: (isValid) {
                              setState(() {
                                _isValidJoinName = isValid;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    '가입 인사',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColors.dark09,
                    ),
                  ),
                  const SizedBox(height: 8),
                  JoinInput(
                    hintText: '가입인사를 작성해주세요',
                    errorText: '가입인사를 작성해주세요',
                    completeText: '',
                    maxLength: 50,
                    onValidChanged: (isValid) {
                      setState(() {
                        _isValidGreeting = isValid;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '동아리에서 활동하는 동안 원활한 운영을 위해 아이디, 별명, 활동 내역, 성별, 연령대, 이름이 운영진에게 공개됩니다. 본 동의를 거부하실 수 있으나, 동아리 가입이 불가합니다.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.dark03,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 296.w,
                    height: 42,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: (_isValidJoinName && _isValidGreeting)
                            ? const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.main,
                                  AppColors.sub,
                                ],
                              )
                            : null,
                        color: (_isValidJoinName && _isValidGreeting)
                            ? null
                            : AppColors.dark02,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ElevatedButton(
                        onPressed: (_isValidJoinName && _isValidGreeting)
                            ? () {
                                Navigator.of(context).pop();
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          "동의 후 가입하기",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: (_isValidJoinName && _isValidGreeting)
                                ? AppColors.dark11
                                : AppColors.dark06,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
