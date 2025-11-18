import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/calculator.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/components/calculator/calculator_button.dart';
import 'package:kubirovacka_one/components/calculator/calculator_checkbox.dart';
import 'package:kubirovacka_one/components/calculator/calculator_select.dart';
import 'package:kubirovacka_one/components/calculator/last_added_log_bar.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/enums/calculation_type.dart';
import 'package:kubirovacka_one/enums/calculator_input_type.dart';
import 'package:kubirovacka_one/enums/wood_type.dart';
import 'package:kubirovacka_one/extensions/enum_extensions.dart';
import 'package:kubirovacka_one/helpers/premium_helper.dart';
import 'package:kubirovacka_one/helpers/wood_helper.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/quality.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_state.dart';

import '../../../../helpers/translations_helpers.dart';
import '../../../../services/quality_service.dart';
import '../bloc/calculator_event.dart';

final getIt = GetIt.instance;

class CalculatorInputFragment extends StatefulWidget {
  const CalculatorInputFragment({super.key});

  @override
  CalculatorInputFragmentState createState() => CalculatorInputFragmentState();
}

class CalculatorInputFragmentState extends State<CalculatorInputFragment> with AutomaticKeepAliveClientMixin {
  final _qualityService = getIt.get<QualityService>();
  final _modeSelectKey = GlobalKey<FormFieldState<CalculationType>>();

  final TextEditingController lengthInputController = TextEditingController();
  final TextEditingController diameterInputController = TextEditingController();
  final TextEditingController fsduInputController = TextEditingController();
  final TextEditingController pieceNumberInputController = TextEditingController();

  final FocusNode lengthInputFocusNode = FocusNode();
  final FocusNode diameterInputFocusNode = FocusNode();
  final FocusNode fsduInputFocusNode = FocusNode();
  final FocusNode pieceNumberInputFocusNode = FocusNode();

  Timer? _debounce;
  var qualities = <Quality>[];

  var activeInputField = CalculatorInputType.length;
  var calculatedVolume = 0.0;
  var isRz = false;
  var woodType = WoodType.spruce;
  var calculationType = CalculationType.withBark;
  late Quality quality;

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _debounce?.cancel();
    lengthInputController.dispose();
    diameterInputController.dispose();
    fsduInputController.dispose();
    pieceNumberInputController.dispose();
    lengthInputFocusNode.dispose();
    diameterInputFocusNode.dispose();
    fsduInputFocusNode.dispose();
    pieceNumberInputFocusNode.dispose();
    super.dispose();
  }

  void recalculate() {
    var volume = calculateVolume(
        calculationType, woodType, double.tryParse(lengthInputController.text) ?? 0, double.tryParse(diameterInputController.text) ?? 0, isRz);
    setState(() {
      calculatedVolume = volume;
    });
  }

  void lengthButtonPressed() {
    lengthInputFocusNode.requestFocus();
    lengthInputController.clear();
    recalculate();
  }

  void diameterButtonPressed() {
    diameterInputFocusNode.requestFocus();
    diameterInputController.clear();
    recalculate();
  }

  void clearField() {
    switch (activeInputField) {
      case CalculatorInputType.length:
        lengthInputController.clear();
        break;
      case CalculatorInputType.diameter:
        diameterInputController.clear();
        break;
      case CalculatorInputType.fsdu:
        fsduInputController.clear();
        break;
      case CalculatorInputType.number:
        pieceNumberInputController.clear();
        break;
    }
    recalculate();
  }

  void numberButtonPressed(String number) {
    if (calculationType == CalculationType.raw && number == '.') {
      return;
    }

    var inputController = lengthInputController;
    switch (activeInputField) {
      case CalculatorInputType.length:
        inputController = lengthInputController;
        break;
      case CalculatorInputType.diameter:
        inputController = diameterInputController;
        break;
      case CalculatorInputType.fsdu:
        inputController = fsduInputController;
        break;
      case CalculatorInputType.number:
        inputController = pieceNumberInputController;
        break;
    }
    setState(() {
      inputController.text += number.toString();
      inputController.selection = TextSelection.fromPosition(TextPosition(offset: inputController.text.length));
    });

    if (_debounce?.isActive ?? false) _debounce!.cancel();
    if (calculationType == CalculationType.raw && activeInputField == CalculatorInputType.length) {
      _debounce = Timer(const Duration(milliseconds: 1000), () {
        if (mounted && lengthInputController.text.isNotEmpty) {
          diameterInputFocusNode.requestFocus();
        }
      });
    }

    recalculate();
  }

  void _rzChanged(bool value) {
    setState(() {
      isRz = value;
    });
    recalculate();
  }

  void _woodChanged(WoodType value) {
    setState(() {
      woodType = value;
    });
    recalculate();
  }

  void _calculationTypeChanged(CalculationType value) {
    void changeCalculationType() {
      if (calculationType == value) return;
      setState(() {
        calculationType = value;
        lengthInputController.clear();
        diameterInputController.clear();
      });
      lengthInputFocusNode.requestFocus();
      recalculate();
    }

    if (value == CalculationType.withBark || value == CalculationType.raw) {
      changeCalculationType();
    } else {
      doIfPremium(context, ifPremium: changeCalculationType, ifNotPremium: () {
        _modeSelectKey.currentState!.didChange(calculationType);
      });
    }
  }

  void _qualityChanged(Quality value) {
    setState(() {
      quality = value;
    });
    recalculate();
  }

  void _addLog() {
    if (lengthInputController.text.isEmpty || diameterInputController.text.isEmpty) {
      return;
    }

    final state = BlocProvider.of<CalculatorBloc>(context).state;
    var length = double.tryParse(lengthInputController.text) ?? 0;
    var diameter = double.tryParse(diameterInputController.text) ?? 0;
    var fsdu = fsduInputController.text;
    var number = int.tryParse(pieceNumberInputController.text) ??
        (state is CalculatorListOpenState && state.currentListLogs!.isNotEmpty
            ? state.currentListLogs!.map((e) => e.number).reduce((value, element) => value > element ? value : element) + 1
            : 1);
    var volume = calculateVolume(calculationType, woodType, length, diameter, isRz);
    BlocProvider.of<CalculatorBloc>(context).add(CalculatorLogAddedEvent(
      logType: calculationType.toWoodLogType(),
      length: length,
      diameter: diameter,
      fsdu: fsdu,
      number: number,
      volume: volume,
      isRz: isRz,
      quality: quality,
      woodType: woodType,
      rawCategory: calculationType == CalculationType.raw ? length.round() : null,
      rawAmount: calculationType == CalculationType.raw ? diameter.round() : null,
    ));

    diameterInputController.clear();
    diameterInputFocusNode.requestFocus();

    if (calculationType != CalculationType.raw) {
      pieceNumberInputController.value = TextEditingValue(text: (number + 1).toString());
    }
    recalculate();
  }

  @override
  void initState() {
    super.initState();
    lengthInputFocusNode.addListener(() {
      if (lengthInputFocusNode.hasFocus) {
        setState(() {
          activeInputField = CalculatorInputType.length;
        });
        lengthInputController.clear();
      }
    });
    diameterInputFocusNode.addListener(() {
      if (diameterInputFocusNode.hasFocus) {
        setState(() {
          activeInputField = CalculatorInputType.diameter;
        });
        diameterInputController.clear();
      }
    });
    fsduInputFocusNode.addListener(() {
      if (fsduInputFocusNode.hasFocus) {
        setState(() {
          activeInputField = CalculatorInputType.fsdu;
        });
        fsduInputController.clear();
      }
    });
    pieceNumberInputFocusNode.addListener(() {
      if (pieceNumberInputFocusNode.hasFocus) {
        setState(() {
          activeInputField = CalculatorInputType.number;
        });
        pieceNumberInputController.clear();
      }
    });

    lengthInputFocusNode.requestFocus();

    final state = BlocProvider.of<CalculatorBloc>(context).state;
    if (state is CalculatorListOpenState && state.currentListLogs!.isNotEmpty) {
      var maxNumber = state.currentListLogs!.map((e) => e.number).reduce((value, element) => value > element ? value : element);
      setState(() {
        pieceNumberInputController.value = TextEditingValue(text: (maxNumber + 1).toString());
      });
    }

    qualities = _qualityService.getQualities();
    quality = qualities.first;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocListener<CalculatorBloc, CalculatorState>(
      listener: (context, state) {
        if (state is CalculatorListOpenState) {
          var maxNumber = 0;
          if (state.currentListLogs!.isNotEmpty) {
            maxNumber = state.currentListLogs!.map((e) => e.number).reduce((value, element) => value > element ? value : element);
          }
          setState(() {
            pieceNumberInputController.value = TextEditingValue(text: (maxNumber + 1).toString());
          });
        }
      },
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                          child: LabeledInput(
                            key: const Key(calculatorInputFragmentInputLengthKey),
                            label: calculationType == CalculationType.raw ? 'Kategorie' : 'Délka (m)',
                            type: TextInputType.number,
                            controller: lengthInputController,
                            readOnly: true,
                            focusNode: lengthInputFocusNode,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: LabeledInput(
                            key: const Key(calculatorInputFragmentInputDiameterKey),
                            label: calculationType == CalculationType.raw ? 'Počet' : 'Průměr (cm)',
                            type: TextInputType.number,
                            controller: diameterInputController,
                            readOnly: true,
                            focusNode: diameterInputFocusNode,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Center(
                          child: Text(
                            key: const Key(calculatorInputFragmentTextVolumeKey),
                            '${calculatedVolume.toStringAsFixed(2)} m³',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Flexible(
                        child: LabeledInput(
                          key: const Key(calculatorInputFragmentInputJprlKey),
                          label: 'JPRL',
                          controller: fsduInputController,
                          focusNode: fsduInputFocusNode,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: LabeledInput(
                          key: const Key(calculatorInputFragmentInputNumberKey),
                          type: TextInputType.number,
                          disabled: calculationType == CalculationType.raw,
                          label: 'Číslo kusu',
                          controller: pieceNumberInputController,
                          readOnly: true,
                          focusNode: pieceNumberInputFocusNode,
                        )),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            BlocBuilder<CalculatorBloc, CalculatorState>(
              builder: (context, state) {
                if (state is CalculatorListOpenState) {
                  if (state.lastAddedLogs != null) {
                    return LastAddedLog(logs: state.lastAddedLogs!);
                  } else {
                    return Container();
                  }
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    CalculatorSelect<WoodType>(
                      selectKey: const Key(calculatorInputFragmentSelectWoodTypeKey),
                      flex: 1,
                      name: 'Dřevina',
                      value: woodType,
                      fillColor: primaryColor,
                      fontSize: 14,
                      onChanged: _woodChanged,
                      options: getSelectedWoodTypes(),
                      displayValueMapper: (value) => getWoodName(value),
                    ),
                    CalculatorButton(
                      buttonKey: const Key(calculatorInputFragmentButtonLengthKey),
                      text: calculationType == CalculationType.raw ? 'Kategorie' : 'Délka',
                      fillColor: activeInputField == CalculatorInputType.length ? accentColor : primaryColor,
                      fontSize: calculationType == CalculationType.raw ? 13 : 14,
                      onPressed: lengthButtonPressed,
                    ),
                    CalculatorButton(
                        buttonKey: const Key(calculatorInputFragmentButtonDiameterKey),
                        text: calculationType == CalculationType.raw ? 'Počet' : 'Průměr',
                        fillColor: activeInputField == CalculatorInputType.diameter ? accentColor : primaryColor,
                        fontSize: 14,
                        onPressed: diameterButtonPressed),
                    CalculatorSelect<Quality>(
                      selectKey: const Key(calculatorInputFragmentSelectQualityKey),
                      name: 'Jakost',
                      value: quality,
                      fillColor: primaryColor,
                      onChanged: _qualityChanged,
                      options: qualities,
                      displayValueMapper: (value) => value.name,
                      fontSize: 14,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}1"),
                        text: '1',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('1');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}4"),
                        text: '4',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('4');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}7"),
                        text: '7',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('7');
                        }),
                    CalculatorSelect(
                      selectKey: const Key(calculatorInputFragmentSelectModeKey),
                      formFieldKey: _modeSelectKey,
                      name: 'Mód',
                      value: calculationType,
                      fillColor: primaryColor,
                      onChanged: _calculationTypeChanged,
                      options: CalculationType.values,
                      displayValueMapper: (value) => value.getName(),
                      fontSize: 14,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}2"),
                        text: '2',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('2');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}5"),
                        text: '5',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('5');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}8"),
                        text: '8',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('8');
                        }),
                    CalculatorButton(
                        buttonKey: const Key('${calculatorInputFragmentButtonNumberKey}0'),
                        text: '0',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('0');
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}3"),
                        text: '3',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('3');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}6"),
                        text: '6',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('6');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}9"),
                        text: '9',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('9');
                        }),
                    CalculatorButton(
                        buttonKey: const Key("${calculatorInputFragmentButtonNumberKey}dot"),
                        text: '.',
                        fillColor: primaryColor,
                        onPressed: () {
                          numberButtonPressed('.');
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalculatorButton(
                        key: const Key(calculatorInputFragmentButtonPlusKey), text: '+', flex: 2, fillColor: accentColor, onPressed: _addLog),
                    CalculatorCheckbox(
                        checkboxKey: const Key(calculatorInputFragmentCheckboxRhizomeKey),
                        text: 'Oddenek',
                        value: isRz,
                        fontSize: 14,
                        fillColor: primaryColor,
                        onChanged: _rzChanged),
                    CalculatorButton(
                        buttonKey: const Key(calculatorInputFragmentButtonClearKey),
                        text: 'Smazat',
                        fontSize: 13,
                        fillColor: warningColor,
                        onPressed: clearField),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}