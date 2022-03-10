import 'package:flutter/material.dart';
import 'package:majoo_task_1/utils/context_ext.dart';

class DashboardHeader extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DashboardHeader({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFacc7ff),
        borderRadius: BorderRadiusDirectional.vertical(
          bottom: Radius.circular(45),
        ),
      ),
      height: screenHeight,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Perkembangan COVID-19 Indonesia',
              textScaleFactor: context.media.textScaleFactor.clamp(1.0, 1.1),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Last update: 2022-02-25 17:08:55',
            textScaleFactor: context.media.textScaleFactor.clamp(1.0, 1.3),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.85,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
