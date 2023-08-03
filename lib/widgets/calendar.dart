import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:teentime/src/colors.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();
  int selectedDay = DateTime.now().day;

  Future<void> _selectMonth(BuildContext context) async {
    DateTime? newSelectedDate = await showMonthPicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (newSelectedDate != null) {
      setState(() {
        selectedDate = newSelectedDate;
        selectedDay = newSelectedDate.day;
      });
    }
  }

  List<int> _generateDaysInMonth(int year, int month) {
    final daysInMonth = DateTime(year, month + 1, 0).day;
    return List.generate(daysInMonth, (index) => index + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 55.w,
              child: ElevatedButton(
                onPressed: () => _selectMonth(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.dark12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                child: Text(
                  DateFormat('M월').format(selectedDate),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal,
                    color: AppColors.dark10,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _generateDaysInMonth(
                    selectedDate.year,
                    selectedDate.month,
                  ).map((day) {
                    return SizedBox(
                      width: 50.w,
                      height: 35.h,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedDay = day;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedDay == day
                              ? AppColors.dark12
                              : AppColors.dark01,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                day.toString(),
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: selectedDay == day
                                      ? Colors.white
                                      : AppColors.dark10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
