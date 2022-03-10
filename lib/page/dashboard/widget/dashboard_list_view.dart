import 'package:flutter/material.dart';
import 'package:majoo_task_1/page/dashboard/widget/dashboard_list_tile.dart';

class DashboardListView extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DashboardListView({
    required this.screenHeight,
    required this.screenWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      children: [
        DashboardListTile(
          screenHeight: screenHeight * 0.25,
          screenWidth: screenWidth,
          boxColor: const Color(0xFFffdcc5),
          titleTextColor: const Color(0xFF945013),
          totalTextColor: const Color(0xFF964a05),
          totalChangeTextColor: const Color(0xFF8c5e2c),
          title: 'Kasus Aktif',
          total: '5,457,775',
          totalChange: '49,447',
          boxEmoji: '🤒',
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        DashboardListTile(
          screenHeight: screenHeight * 0.25,
          screenWidth: screenWidth,
          boxColor: const Color(0xFF96f7b8),
          titleTextColor: const Color(0xFF056e38),
          totalTextColor: const Color(0xFF006f3d),
          totalChangeTextColor: const Color(0xFF137641),
          title: 'Sembuh',
          total: '4,736,234',
          totalChange: '61,361',
          boxEmoji: '😄',
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        DashboardListTile(
          screenHeight: screenHeight * 0.25,
          screenWidth: screenWidth,
          boxColor: const Color(0xFFffdbd4),
          titleTextColor: const Color(0xFF992321),
          totalTextColor: const Color(0xFFbd0102),
          totalChangeTextColor: const Color(0xFFa31c21),
          title: 'Meninggal',
          total: '147,586',
          totalChange: '244',
          boxEmoji: '😢',
        ),
      ],
    );
  }
}
