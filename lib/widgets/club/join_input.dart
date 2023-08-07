import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/src/colors.dart';

class JoinInput extends StatefulWidget {
  final String hintText;
  final String errorText;
  final String completeText;
  final int maxLength;
  final ValueChanged<bool> onValidChanged;

  JoinInput({
    required this.hintText,
    required this.errorText,
    required this.completeText,
    required this.maxLength,
    required this.onValidChanged,
  });

  @override
  _JoinInputState createState() => _JoinInputState();
}

class _JoinInputState extends State<JoinInput> {
  TextEditingController _textEditingController = TextEditingController();
  int _currentLength = 0;
  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_updateCurrentLength);
  }

  void _updateCurrentLength() {
    setState(() {
      _currentLength = _textEditingController.text.length;
    });

    _isValid = _currentLength > 0;
    widget.onValidChanged(_isValid);
  }

  void _validateInput() {
    setState(() {
      _isValid = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  controller: _textEditingController,
                  maxLength: widget.maxLength,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                    ),
                    helperStyle: TextStyle(
                      fontSize: 0.sp,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: AppColors.dark08,
                    ),
                    errorText:
                        _isValid ? widget.completeText : widget.errorText,
                    errorStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                      color: _isValid ? AppColors.volunteer : AppColors.color1,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
                    filled: true,
                    fillColor: AppColors.dark12,
                  ),
                  onChanged: (text) {
                    _updateCurrentLength();
                    _validateInput();
                  },
                  style: const TextStyle(
                    color: AppColors.dark11,
                  ),
                ),
              ),
              Container(
                width: 50.w,
                height: 51.h,
                decoration: const BoxDecoration(
                  color: AppColors.dark12,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${_textEditingController.text.length}/${widget.maxLength}',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColors.dark03,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
