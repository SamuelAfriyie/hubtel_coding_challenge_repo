import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFE6EAED),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TabBar(
        dividerColor: const Color(0xFFE6EAED),
        splashBorderRadius: BorderRadius.circular(12),
        splashFactory: InkRipple.splashFactory,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        indicatorPadding: const EdgeInsets.symmetric(vertical: 4),
        labelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const <Widget>[
          Tab(text: 'History'),
          Tab(text: 'Transaction summary'),
        ],
      ),
    );
  }
}
