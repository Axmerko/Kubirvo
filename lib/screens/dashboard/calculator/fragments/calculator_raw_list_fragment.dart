import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/components/confirm_danger_dialog.dart';
import 'package:kubirovacka_one/components/list_raw_row.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_state.dart';

import '../../../../components/calculator/delete_log_dialog.dart';
import '../../../../models/wood_log.dart';
import '../bloc/calculator_event.dart';

class CalculatorRawListFragment extends StatefulWidget {
  const CalculatorRawListFragment({super.key});

  @override
  CalculatorRawListFragmentState createState() => CalculatorRawListFragmentState();
}

class CalculatorRawListFragmentState extends State<CalculatorRawListFragment> {
  final _selectedLogs = <WoodLog>[];
  static const _multiEditBarHeight = 50.0;

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

  void _deleteSelectedLogs() {
    final outerContext = context;
    showDialog(
        context: context,
        builder: (context) => ConfirmDangerDialog(
          title: 'Smazat kusy',
          description: 'Opravdu chcete vybrané kusy smazat?',
          submitButtonText: 'Smazat',
          icon: Icons.delete_forever,
          onSubmit: () {
            BlocProvider.of<CalculatorBloc>(outerContext).add(CalculatorLogsDeletedEvent(logIds: _selectedLogs.map((e) => e.id).toList()));
            setState(() {
              _selectedLogs.clear();
            });
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
        if (state.currentListLogsRaws!.isNotEmpty) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.currentListLogsRaws!.length,
                      itemBuilder: (context, index) {
                        return ListRawRow(
                          index: index,
                          key: Key(calculatorRawsFragmentTileRawKey + index.toString()),
                          log: state.currentListLogsRaws![index],
                          selected: _selectedLogs.contains(state.currentListLogsRaws![index]),
                          onTap: () {
                            setState(() {
                              if (_selectedLogs.contains(state.currentListLogsRaws![index])) {
                                _selectedLogs.remove(state.currentListLogsRaws![index]);
                              } else {
                                _selectedLogs.add(state.currentListLogsRaws![index]);
                              }
                            });
                          },
                          onDeleteTap: () {
                            _deleteLog(state.currentListLogsRaws![index]);
                          },
                        );
                      },
                    ),
                  ),
                  _selectedLogs.isNotEmpty
                      ? const SizedBox(
                          height: _multiEditBarHeight,
                        )
                      : Container(),
                ],
              ),
              _selectedLogs.isNotEmpty
                  ? Container(
                      color: secondaryColor,
                      width: double.infinity,
                      height: _multiEditBarHeight,
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Text(
                          'Vybráno: ${_selectedLogs.length}',
                          style: const TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              key: const Key(calculatorRawsFragmentButtonBatchDeleteKey),
                              color: Colors.white,
                              icon: const Icon(Icons.delete_forever),
                              onPressed: _deleteSelectedLogs,
                            ),
                            IconButton(
                              key: const Key(calculatorRawsFragmentButtonBatchDeleteCancelKey),
                              icon: const Icon(Icons.close),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _selectedLogs.clear();
                                });
                              },
                            ),
                          ],
                        )
                      ]),
                    )
                  : Container(),
            ],
          );
        } else {
          return const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(key: Key(calculatorRawsFragmentTextSectionDescription1Key), 'Zde uvidíte vaše suráky.', textAlign: TextAlign.center),
              ),
              Center(
                child: Text(
                  'Zkuste nějaký přidat na obrazovce vpravo. 🪵🪓',
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  'Nezapomeňte přepnout mód na "Surák".',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
