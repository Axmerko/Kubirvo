import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/components/calculator/calculator_log_edit_dialog.dart';
import 'package:kubirovacka_one/components/calculator/delete_log_dialog.dart';
import 'package:kubirovacka_one/components/list_log_row.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_event.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_state.dart';

class CalculatorLogListFragment extends StatefulWidget {
  const CalculatorLogListFragment({super.key});

  @override
  CalculatorLogListFragmentState createState() => CalculatorLogListFragmentState();
}

class CalculatorLogListFragmentState extends State<CalculatorLogListFragment> {
  void _editLog(WoodLog log) {
    final outerContext = context;
    showDialog(
        context: context,
        builder: (context) => CalculatorLogEditDialog(
              woodLog: log,
              onLogEdited: (WoodLog woodLog) {
                BlocProvider.of<CalculatorBloc>(outerContext).add(CalculatorLogEditedEvent(log: woodLog));
              }
            ));
  }

  void _deleteLog(WoodLog log) {
    final outerContext = context;
    showDialog(
        context: context,
        builder: (context) => DeleteLogDialog(
          woodLog: log,
          onDeleted: (reindex) {
            BlocProvider.of<CalculatorBloc>(outerContext).add(CalculatorLogDeletedEvent(log: log, reindex: reindex));
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        if (state is! CalculatorListOpenState) {
          return Container();
        }
        if (state.currentListLogsClassicLogs!.isNotEmpty) {
          return ListView.builder(
            itemCount: state.currentListLogsClassicLogs!.length,
            itemBuilder: (context, index) {
              return ListLogRow(
                index: index,
                key: Key("$calculatorLogsFragmentTileLogKey$index"),
                log: state.currentListLogsClassicLogs![index],
                onTap: () {
                  _editLog(state.currentListLogsClassicLogs![index]);
                },
                onDeleteTap: () {
                  _deleteLog(state.currentListLogsClassicLogs![index]);
                },
              );
            },
          );
        } else {
          return const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text('Zde uvidíte vaše zadané kusy.', textAlign: TextAlign.center),
              ),
              Center(
                child: Text('Zkuste nějaký přidat na obrazovce vlevo. 🪵🪓', textAlign: TextAlign.center),
              ),
            ],
          );
        }
      },
    );
  }
}
