import 'package:code_challenge/History/presentation/pages/history_page.dart';
import 'package:code_challenge/core/config/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryCard extends StatelessWidget {
  final History history;
  const HistoryCard({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(history.time),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(AppImages.mtnLogo),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(history.userName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(history.phone),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: history.status ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        history.transactionType,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(history.amount),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
