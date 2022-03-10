import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:majoo_task_1/page/dashboard/dashboard_landscape.dart';
import 'package:majoo_task_1/page/dashboard/dashboard_potrait.dart';
import '/utils/context_ext.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = context.media.size.height;
    final screenWidth = context.media.size.width;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return DashboardLandscape(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            );
          } else {
            return DashboardPotrait(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFacc7ff),
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/images/github.svg',
          height: 30,
        ),
      ),
    );
  }
}
