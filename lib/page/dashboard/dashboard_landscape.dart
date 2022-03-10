import 'package:flutter/material.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_header.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_list_view.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_note.dart';

class DashboardLandscape extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DashboardLandscape({
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: DashboardHeader(
              screenHeight: screenHeight * 0.9,
              screenWidth: screenWidth * 0.4,
            ),
          ),
          Positioned(
            top: screenHeight * 0.10,
            left: screenWidth * 0.35,
            right: screenWidth * 0.005,
            bottom: screenHeight * 0.10,
            child: DashboardListView(
              screenHeight: screenHeight * 1.25,
              screenWidth: screenWidth,
            ),
          ),
          Positioned(
            left: screenWidth * 0.125,
            bottom: screenHeight * 0.015,
            child: Center(
              child: DashboardNote(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
