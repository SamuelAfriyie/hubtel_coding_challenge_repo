import 'package:code_challenge/History/presentation/pages/history_page.dart';
import 'package:code_challenge/History/presentation/widget/tab_widget.dart';
import 'package:code_challenge/core/presentation/widget/button_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.h),
              const TabWidget(),
              SizedBox(height: 10.h),
              const Divider(),
              SizedBox(height: 10.h),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    HistoryPage(),
                    Center(child: Text('Transaction Summary Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppNavigationBar(
        onNavigationChange: (int value) =>
            setState(() => selectedIndex = value),
        currentPageIndex: selectedIndex,
      ),
    );
  }
}
