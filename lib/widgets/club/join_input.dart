import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';

class JoinInput extends StatefulWidget {
  final String hintText;
  final String errorText;
  final int maxLength;

  JoinInput(
      {required this.hintText,
      required this.errorText,
      required this.maxLength});

  @override
  _JoinInputState createState() => _JoinInputState();
}

class _JoinInputState extends State<JoinInput> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              TextFormField(
                controller: _textEditingController,
                maxLength: widget.maxLength,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark08,
                  ),
                  errorStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: AppColors.color1,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
                  filled: true,
                  fillColor: AppColors.dark12,
                ),
                onChanged: (text) {
                  setState(() {});
                },
                style: const TextStyle(
                  color: AppColors.dark11,
                ),
              ),
              Positioned(
                top: 15.h,
                right: 16.w,
                child: Text(
                  '${_textEditingController.text.length}/${widget.maxLength}',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark03,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
