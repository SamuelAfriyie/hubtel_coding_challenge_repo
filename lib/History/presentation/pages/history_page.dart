import 'package:code_challenge/History/presentation/widget/history_card.dart';
import 'package:code_challenge/History/presentation/widget/input_search_widget.dart';
import 'package:code_challenge/core/config/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  final List<History> history = const <History>[
    History(
      time: '14:45pm',
      networkImage: AppImages.mtnLogo,
      amount: 'GHC 500',
      transactionType: 'N500 airtime',
      status: true,
      userName: 'Emmanuel Rockson Kwabena Uncle',
      phone: '0241234567',
    ),
    History(
      time: '14:45pm',
      networkImage: AppImages.mtnLogo,
      amount: 'GHC 500',
      transactionType: 'GHC 500 airtime',
      status: false,
      userName: 'Absa Bank',
      phone: '0241234567',
    ),
    History(
      time: '14:45pm',
      networkImage: AppImages.mtnLogo,
      amount: 'GHC 500',
      transactionType: 'GHC 500 airtime',
      status: true,
      userName: 'Emmanuel Rockson',
      phone: '0241234567',
    ),
    History(
      time: '14:45pm',
      networkImage: AppImages.mtnLogo,
      amount: 'GHC 500',
      transactionType: 'GHC 500 airtime',
      status: true,
      userName: 'Emmanuel Rockson',
      phone: '0241234567',
    ),
  ];
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Expanded(child: InputSearchWidget()),
              Image.asset(AppImages.filterIcon, fit: BoxFit.scaleDown)
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              color: const Color(0xFFE6EAED),
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: const Text('May 24, 2024'),
          ),
          SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.history.length,
              itemBuilder: (BuildContext context, int index) {
                return HistoryCard(
                  history: widget.history[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class History {
  final String time;
  final String networkImage;
  final String amount;
  final String transactionType;
  final bool status;
  final String userName;
  final String phone;

  const History({
    required this.time,
    required this.networkImage,
    required this.amount,
    required this.transactionType,
    required this.status,
    required this.userName,
    required this.phone,
  });
}
