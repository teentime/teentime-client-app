import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/screens/bottom_navigation.dart';
import 'package:teentime/src/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext  context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, _) => MaterialApp(
        routes: Routes.routes,
        theme: ThemeData(fontFamily: 'Pretendard'),
        home: BottomNavigator(),
      ),
    );
  }
}
