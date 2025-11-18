import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/components/statistics_graph/statistics_filter.dart';

class StatisticsChart extends StatelessWidget {
  final GraphDataDto? data;
  final bool isEarnings;
  final StatsInterval selectedInterval;

  const StatisticsChart({
    super.key,
    required this.data,
    required this.isEarnings,
    required this.selectedInterval,
  });

  bool _hasData(GraphDataDto? data) {
    return data != null && data.graphValuesY != null && data.graphValuesY!.isNotEmpty;
  }

  List<FlSpot> _createSpots(GraphDataDto data) {
    final spots = <FlSpot>[];
    if (!_hasData(data) || data.graphValuesY == null) {
      return spots;
    }

    for (int i = 0; i < data.graphValuesY!.length; i++) {
      final x = (i + 1).toDouble();
      final y = data.graphValuesY![i];
      spots.add(FlSpot(x, y));
    }
    return spots;
  }

  String _getIntervalDisplayName() {
    switch (selectedInterval) {
      case StatsInterval.week:
        return 'tento týden';
      case StatsInterval.month:
        return 'tento měsíc';
      default:
        return 'dnešek';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_hasData(data)) {
      return SizedBox(
        height: 250,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.show_chart, size: 40, color: Colors.grey),
              const SizedBox(height: 8),
              Text(
                'Pro ${_getIntervalDisplayName()} zatím nejsou žádná data',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    Widget getBottomTitles(double value, TitleMeta meta) {
      const style = TextStyle(fontSize: 10, color: Colors.black54, fontWeight: FontWeight.bold);
      String text = '';

      if (selectedInterval == StatsInterval.week) {
        const days = ['P', 'Ú', 'S', 'Č', 'P', 'S', 'N'];
        int dayIndex = value.toInt() - 1;
        if (dayIndex >= 0 && dayIndex < days.length) {
          text = days[dayIndex];
        }
      } else if (selectedInterval == StatsInterval.month) {
        if (value.toInt() % 5 == 0) {
          text = value.toInt().toString();
        }
      }

      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(text, style: style),
      );
    }

    var maxValue = data?.graphValuesY?.reduce((a, b) => a > b ? a : b) ?? 100;


    if (maxValue == 0) {
      maxValue = 1;
    }

    return SizedBox(
      height: 250,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: getBottomTitles,
                  interval: 1,
                ),
              ),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, interval: maxValue / 6, reservedSize: 55)),
              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false))),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (_) => const FlLine(color: lightGrayColor, strokeWidth: 0.5),
            getDrawingVerticalLine: (_) => const FlLine(color: lightGrayColor, strokeWidth: 0.5),
          ),
          borderData: FlBorderData(show: true, border: Border.all(color: lightGrayColor)),
          lineBarsData: [
            if (_hasData(data)) _buildLineChartBarData(data!, isEarnings ? primaryColor : secondaryColor),
          ],
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (context) => isEarnings ? primaryColor : secondaryColor,
              getTooltipItems: (List<LineBarSpot> touchedSpots) {
                return touchedSpots.map((spot) {
                  final y = spot.y;
                  final label = isEarnings ? 'Kč' : 'm³';
                  return LineTooltipItem(
                    '${y.toStringAsFixed(isEarnings ? 0 : 2)} $label',
                    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }

  LineChartBarData _buildLineChartBarData(GraphDataDto data, Color color) {
    return LineChartBarData(
      spots: _createSpots(data),
      isCurved: true,
      curveSmoothness: 0.2,
      preventCurveOverShooting: true,
      color: color,
      barWidth: 3,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          colors: [color.withAlpha(85), Colors.transparent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}