import 'package:flutter/material.dart';
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/helpers/validation_helpers.dart';

import '../models/wood_log_list.dart';

class ListEditDialog extends StatefulWidget {
  final WoodLogList list;
  final Function(String name, int rewardInCents) onListEdited;

  const ListEditDialog({super.key, required this.list, required this.onListEdited});

  @override
  ListEditDialogState createState() => ListEditDialogState();
}

class ListEditDialogState extends State<ListEditDialog> {
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

    widget.onListEdited(_titleController.text, rewardInCents.round());

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
    _titleController.text = widget.list.name;
    _rewardPerUnitController.text = (widget.list.rewardInCents / 100).toStringAsFixed(2);
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
                  'Upravit seznam',
                ),
                const SizedBox(
                  height: 10,
                ),

                LabeledInput(label: 'Název', controller: _titleController, validator: validateNotEmpty),
                const SizedBox(height: 10,),
                LabeledInput(label: 'Odměna za m³', controller: _rewardPerUnitController, validator: validateOptionalPositiveOrZeroNumber, type: TextInputType.number),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: _submit,
                      child: const Text('Uložit'),
                    ),
                    Builder(builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 10,),
                          TextButton(
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
        ));
  }

}
