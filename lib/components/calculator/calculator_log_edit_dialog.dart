import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/calculator.dart';
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/extensions/enum_extensions.dart';
import 'package:kubirovacka_one/extensions/string_extensions.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/quality.dart';
import 'package:kubirovacka_one/services/quality_service.dart';

import '../../enums/wood_type.dart';
import '../../helpers/translations_helpers.dart';
import '../../helpers/wood_helper.dart';
import '../../models/wood_log.dart';

final getIt = GetIt.instance;

class CalculatorLogEditDialog extends StatefulWidget {
  final WoodLog woodLog;
  final Function(WoodLog woodLog) onLogEdited;

  const CalculatorLogEditDialog({super.key, required this.woodLog, required this.onLogEdited});

  @override
  CalculatorLogEditDialogState createState() => CalculatorLogEditDialogState();
}

class CalculatorLogEditDialogState extends State<CalculatorLogEditDialog> {
  final _qualityService = getIt.get<QualityService>();

  final _lengthController = TextEditingController();
  final _diameterController = TextEditingController();
  final _fsduController = TextEditingController();
  final _pieceNumberController = TextEditingController();

  late final WoodLog _woodLog;

  final _formKey = GlobalKey<FormState>();

  void closeDialog() {
    Navigator.of(context).pop();
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;

    _woodLog.length = double.tryParse(_lengthController.text) ?? 0;
    _woodLog.diameter = double.tryParse(_diameterController.text) ?? 0;
    _woodLog.fsdu = _fsduController.text;
    _woodLog.number = int.tryParse(_pieceNumberController.text) ?? 0;

    widget.onLogEdited(_woodLog);
    closeDialog();
  }

  void recalculate() {
    var volume = calculateVolume(_woodLog.woodLogType.toCalculationType(), _woodLog.woodType, double.tryParse(_lengthController.text) ?? 0,
        double.tryParse(_diameterController.text) ?? 0, _woodLog.isRhizome);
    setState(() {
      _woodLog.volume = volume;
    });
  }

  @override
  void dispose() {
    _lengthController.dispose();
    _diameterController.dispose();
    _fsduController.dispose();
    _pieceNumberController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _woodLog = widget.woodLog.copy();

    _lengthController.text = _woodLog.length.toString();
    _diameterController.text = _woodLog.diameter.toString();
    _fsduController.text = _woodLog.fsdu.toString();
    _pieceNumberController.text = _woodLog.number.toString();

    _lengthController.addListener(() {
      recalculate();
    });

    _diameterController.addListener(() {
      recalculate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Heading1(
                'Upravit kus',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: DropdownButton<WoodType>(
                      key: const Key(editLogSelectWoodTypeKey),
                      onChanged: (value) {
                        setState(() {
                          _woodLog.woodType = value!;
                          recalculate();
                        });
                      },
                      underline: Container(),
                      icon: const Icon(Icons.arrow_drop_down),
                      alignment: Alignment.center,
                      value: _woodLog.woodType,
                      items: getSelectedWoodTypes().map<DropdownMenuItem<WoodType>>((WoodType value) {
                        return DropdownMenuItem<WoodType>(
                          value: value,
                          child: Text(
                            key: Key("$editLogDropdownWoodTypeOptionKey${getSelectedWoodTypes().indexOf(value)}"),
                            getWoodName(value),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Flexible(
                    child: DropdownButton<WoodLogType>(
                      key: const Key(editLogSelectCalculationModeKey),
                      onChanged: (value) {
                        setState(() {
                          _woodLog.woodLogType = value!;
                          recalculate();
                        });
                      },
                      underline: Container(),
                      icon: const Icon(Icons.arrow_drop_down),
                      alignment: Alignment.center,
                      value: _woodLog.woodLogType,
                      items:
                          WoodLogType.values.where((element) => element != WoodLogType.raw).map<DropdownMenuItem<WoodLogType>>((WoodLogType value) {
                        return DropdownMenuItem<WoodLogType>(
                          key: Key("$editLogDropdownCalculationModeOptionKey${WoodLogType.values.indexOf(value)}"),
                          value: value,
                          child: Text(
                            value.getName(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      child: DropdownButton(
                        key: const Key(editLogSelectQualityKey),
                        onChanged: (value) {
                          setState(() {
                            _woodLog.quality = value as int;
                            recalculate();
                          });
                        },
                        underline: Container(),
                        icon: const Icon(Icons.arrow_drop_down),
                        alignment: Alignment.center,
                        value: _qualityService.getQualities().map((e) => e.number).contains(_woodLog.quality)
                            ? _woodLog.quality
                            : _qualityService.getQualities().first,
                        items: _qualityService.getQualities().map<DropdownMenuItem<int>>((Quality value) {
                          return DropdownMenuItem<int>(
                            key: Key("$editLogDropdownQualityOptionKey${_qualityService.getQualities().indexOf(value)}"),
                            value: value.number,
                            child: Text(
                              value.name.abbreviate(8),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1, child: LabeledInput(inputKey: const Key(editLogInputLengthKey), label: 'Délka (m)', controller: _lengthController)),
                  Flexible(
                      flex: 1,
                      child: LabeledInput(inputKey: const Key(editLogInputDiameterKey), label: 'Průměr (cm)', controller: _diameterController)),
                  Flexible(
                      flex: 1,
                      child: SizedBox(
                        width: 85,
                        child: Text(
                          key: const Key(editLogTextVolumeKey),
                          '${_woodLog.volume.toStringAsFixed(2)} m³',
                          textAlign: TextAlign.end,
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1, child: LabeledInput(inputKey: const Key(editLogInputJprlKey), label: 'JPRL', controller: _fsduController)),
                  Flexible(
                      flex: 1,
                      child: LabeledInput(inputKey: const Key(editLogInputNumberKey), label: 'Číslo kusu', controller: _pieceNumberController)),
                  Flexible(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _woodLog.isRhizome = !_woodLog.isRhizome;
                            recalculate();
                          });
                        },
                        child: SizedBox(
                          width: 85,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Checkbox(
                                key: const Key(editLogCheckboxRhizomeKey),
                                onChanged: (value) {
                                  setState(() {
                                    _woodLog.isRhizome = !_woodLog.isRhizome;
                                    recalculate();
                                  });
                                },
                                value: _woodLog.isRhizome,
                              ),
                              const Text(
                                'Oddenek',
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    key: const Key(editLogButtonSubmitKey),
                    onPressed: _submit,
                    child: const Text('Uložit'),
                  ),
                  Builder(
                    builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            key: const Key(editLogButtonCancelKey),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Zrušit'),
                          ),
                        ],
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
