import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';

class StatsChart extends StatelessWidget {
  const StatsChart({Key? key}) : super(key: key);

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 30,
        margin: 10,
        interval: 1,
        getTextStyles: (context, value) {
          if (value == 4) {
            return TextStyle(
              color: Constants.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            );
          }

          if (value == 2 || value == 6) {
            return TextStyle(
              color: Constants.textColor.withOpacity(0.8),
              fontSize: 16,
            );
          }

          return TextStyle(
            color: Constants.textColor.withOpacity(0.4),
            fontSize: 16,
          );
        },
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return 'Jun';
            case 2:
              return 'July';
            case 4:
              return 'Augest';
            case 6:
              return 'Sep';
            case 8:
              return 'Oct';
          }
          return '';
        },
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: bottomTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [Constants.textColor],
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 1),
          FlSpot(2, 1.5),
          FlSpot(4, 2),
          FlSpot(6, 1.8),
          FlSpot(8, 3),
        ],
      );
  LineChartData sampleData2() => LineChartData(
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            tooltipPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            tooltipRoundedRadius: 15,
            tooltipBgColor: Constants.textColor,
            getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
              return touchedBarSpots.map((barSpot) {
                final flSpot = barSpot;
                return LineTooltipItem(
                  flSpot.y.toInt().toString() + "%",
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }).toList();
            },
          ),
          // touchCallback: (LineTouchResponse touchResponse?) {},
          handleBuiltInTouches: true,
        ),
        gridData: FlGridData(
          show: true,
          horizontalInterval: 2,
          verticalInterval: 2,
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: Colors.black.withOpacity(0.05),
              strokeWidth: 2,
            );
          },
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.black.withOpacity(0.05),
              strokeWidth: 2,
            );
          },
        ),
        titlesData: titlesData2,
        borderData: FlBorderData(show: false),
        lineBarsData: [lineChartBarData1_1],
        minX: 0,
        maxX: 8,
        maxY: 4,
        minY: 0,
      );

  @override
  Widget build(BuildContext context) {
    return LineChart(sampleData2());
  }
}
