import 'package:flutter/material.dart';
import 'package:kubirovacka_one/colors.dart';

enum StatsInterval { day, week, month }

class StatisticsFilter extends StatelessWidget {
  final StatsInterval selected;
  final ValueChanged<StatsInterval> onChanged;

  const StatisticsFilter({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white
          ),
          clipBehavior: Clip.hardEdge,
          child: ToggleButtons(
            direction: Axis.horizontal,
            onPressed: (int index) {
              onChanged(StatsInterval.values[index]);
            },
            borderColor: Colors.transparent,
            selectedBorderColor: secondaryColor,
            selectedColor: Colors.white,
            fillColor: secondaryColor,
            color: Colors.black,
            constraints: BoxConstraints.expand(width: (constraints.maxWidth - 4) / 3),
            // -4 for the borders
            isSelected: [
              selected == StatsInterval.day,
              selected == StatsInterval.week,
              selected == StatsInterval.month,
            ],
            children: const [
              Text('Dnes', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Týden', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Měsíc', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        );
      },
    );
  }
}
