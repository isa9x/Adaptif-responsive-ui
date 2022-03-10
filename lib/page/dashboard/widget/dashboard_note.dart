import 'package:flutter/material.dart';
import 'package:majoo_task_1/utils/context_ext.dart';

class DashboardNote extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const DashboardNote({
    required this.screenHeight,
    required this.screenWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: Text(
        'Note: Data harian COVID-19 biasanya update pada pukul sekitar 17.00',
        textScaleFactor: context.media.textScaleFactor.clamp(1.0, 1.3),
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
