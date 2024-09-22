import 'package:code_challenge/core/config/assets/app_images.dart';
import 'package:flutter/material.dart';

class InputSearchWidget extends StatelessWidget {
  const InputSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE6EAED),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Color(0xFFA1A4A6),
          ),
          prefixIcon: Image.asset(
            AppImages.searchIcon,
            fit: BoxFit.scaleDown,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
