import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_event.dart';

import '../../colors.dart';
import '../../helpers/translations_helpers.dart';

class LastAddedLog extends StatelessWidget {
  final List<WoodLog> logs;

  const LastAddedLog({super.key, required this.logs});

  @override
  Widget build(BuildContext context) {
    final text = logs.length == 1 && logs.first.woodLogType != WoodLogType.raw
        ? '${getWoodName(logs.first.woodType)}, ${logs.first.length?.toStringAsFixed(1)} | ${logs.first.diameter?.toStringAsFixed(1)}, ${logs.first.volume.toStringAsFixed(2)} m³'
    : '${getWoodName(logs.first.woodType)}, ${logs.length} x ${logs.first.rawCategory!.toString()}';

    void deleteLog() {
      final bloc = BlocProvider.of<CalculatorBloc>(context);
      bloc.add(CalculatorLogsDeletedEvent(logIds: logs.map((e) => e.id).toList()));
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        color: secondaryTransparentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: const TextStyle(fontSize: 16, color: Colors.white)),
            IconButton(onPressed: deleteLog, icon: const Icon(Icons.delete_forever), color: Colors.white)
          ],
        ),
      ),
    );
  }
}
