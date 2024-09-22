import 'package:code_challenge/History/presentation/history_screen.dart';
import 'package:code_challenge/core/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: lightTheme,
        title: 'History Page',
        home: const HistoryScreen(),
      ),
    );
  }
}
