import 'package:flutter/material.dart';
import 'package:majoo_task_1/utils/context_ext.dart';

class DashboardListTile extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final Color boxColor;
  final Color titleTextColor;
  final Color totalTextColor;
  final Color totalChangeTextColor;
  final String title;
  final String total;
  final String totalChange;
  final String boxEmoji;

  const DashboardListTile({
    required this.screenHeight,
    required this.screenWidth,
    required this.boxColor,
    required this.title,
    required this.total,
    required this.totalChange,
    required this.boxEmoji,
    required this.titleTextColor,
    required this.totalTextColor,
    required this.totalChangeTextColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textScaleFactor:
                      context.media.textScaleFactor.clamp(1.0, 1.3),
                  style: TextStyle(
                    color: titleTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  total,
                  textScaleFactor:
                      context.media.textScaleFactor.clamp(1.0, 1.3),
                  style: TextStyle(
                    color: totalTextColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      totalChange,
                      textScaleFactor:
                          context.media.textScaleFactor.clamp(1.0, 1.3),
                      style: TextStyle(
                        color: totalChangeTextColor,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_upward,
                      color: totalChangeTextColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Text(
              boxEmoji,
              textScaleFactor: context.media.textScaleFactor.clamp(1.0, 1.5),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
