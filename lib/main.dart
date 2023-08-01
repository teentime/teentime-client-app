import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/screens/login.dart';
import 'package:teentime/screens/sign_up.dart';
// import 'package:teentime/widgets/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, _) => MaterialApp(
        theme: ThemeData(fontFamily: 'Pretendard'),
        home: SignUp(),
        // home: BottomNavigation(),
      ),
    );
  }
}
