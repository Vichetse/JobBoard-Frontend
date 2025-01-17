import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:admin/constants/constants.dart';

class AdminChart extends StatelessWidget {
  const AdminChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return SizedBox(
          height: 200,
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 70,
                  startDegreeOffset: -90,
                  sections: paiChartSelectionData,
                ),
              ),
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: defaultPadding),
                    Text(
                    '10',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            height: 0.5,
                          ),
                    ),
                    Text("of User"),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}

List<PieChartSectionData> paiChartSelectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 10,
    showTitle: false,
    radius: 19,
  ),

];
