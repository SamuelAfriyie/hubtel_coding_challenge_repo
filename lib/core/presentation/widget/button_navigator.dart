import 'package:code_challenge/core/config/assets/app_images.dart';
import 'package:flutter/material.dart';

typedef OnNavigationChange = void Function(int value);

class AppNavigationBar extends StatelessWidget {
  final double? elevation;
  final int currentPageIndex;
  final OnNavigationChange onNavigationChange;

  const AppNavigationBar(
      {super.key,
      this.elevation,
      this.currentPageIndex = 0,
      required this.onNavigationChange});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              color: Colors.black, // Set label color to white
              fontSize: 12, // Optional: adjust the font size
            ),
          ),
        ),
      ),
      child: NavigationBar(
        elevation: elevation,
        onDestinationSelected: (int index) {
          onNavigationChange(index);
        },
        indicatorColor: const Color(0xFFCCF3EF),
        selectedIndex: currentPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        destinations: [
          NavigationDestination(
              icon: Image.asset(AppImages.homeIcon), label: ''),
          NavigationDestination(
              icon: Image.asset(AppImages.sendIcon), label: 'Send'),
          NavigationDestination(
            icon: Image.asset(AppImages.historyIcon),
            label: 'History',
          ),
          NavigationDestination(
              icon: Image.asset(AppImages.scheduledIcon), label: 'Scheduled'),
        ],
      ),
    );
  }
}
