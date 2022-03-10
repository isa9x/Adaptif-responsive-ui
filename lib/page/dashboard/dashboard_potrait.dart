import 'package:flutter/material.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_header.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_list_view.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_note.dart';

class DashboardPotrait extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DashboardPotrait({
    required this.screenHeight,
    required this.screenWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Stack(
        children: [
          DashboardHeader(
            screenHeight: screenHeight * 0.35,
            screenWidth: screenWidth,
          ),
          Positioned(
            top: screenHeight * 0.275,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.15,
            child: DashboardListView(
              screenHeight: screenHeight * 0.7,
              screenWidth: screenWidth,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: screenHeight * 0.085,
            child: DashboardNote(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          ),
        ],
      ),
    );
  }
}
