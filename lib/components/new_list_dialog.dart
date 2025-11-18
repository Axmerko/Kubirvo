import 'package:flutter/material.dart';
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/helpers/validation_helpers.dart';
import 'package:kubirovacka_one/keys.dart';

class NewListDialog extends StatefulWidget {
  final bool firstList;
  final Function(String, int) onListCreated;

  const NewListDialog({super.key, required this.firstList, required this.onListCreated});

  @override
  NewListDialogState createState() => NewListDialogState();
}

class NewListDialogState extends State<NewListDialog> {
  final _titleController = TextEditingController();
  final _rewardPerUnitController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void closeDialog() {
    Navigator.of(context).pop();
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;

    var rewardInCents = num.tryParse(_rewardPerUnitController.value.text) ?? 0;
    rewardInCents *= 100;

    widget.onListCreated(_titleController.text, rewardInCents.round());

    closeDialog();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _rewardPerUnitController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _titleController.text = DateTime.now().toLocal().toString().split(' ')[0].split('-').reversed.join('.');
    const defaultReward = 0.0;
    _rewardPerUnitController.text = defaultReward.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !widget.firstList,
      child: Dialog(
          child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Heading1(
                        'Nový seznam',
                      ),
                      const Text(
                        'V seznamu budete mít uložené všechny spočítané kusy. Slouží pro lepší organizaci.',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      LabeledInput(
                          label: 'Název', controller: _titleController, validator: validateNotEmpty, inputKey: const Key(sendListInputEmailKey)),
                      const SizedBox(
                        height: 10,
                      ),
                      LabeledInput(
                          label: 'Odměna za m³',
                          controller: _rewardPerUnitController,
                          validator: validateOptionalPositiveOrZeroNumber,
                          type: TextInputType.number,
                          inputKey: const Key(sendListInputMessageKey)),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            key: const Key(newListButtonCreateKey),
                            onPressed: _submit,
                            child: const Text('Vytvořit'),
                          ),
                          Builder(
                            builder: (context) {
                              if (widget.firstList) {
                                return const SizedBox(
                                  height: 0,
                                );
                              }
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextButton(
                                    key: const Key(newListButtonCancelKey),
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
              )),
        ));
  }
}
