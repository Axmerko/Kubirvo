import 'package:flutter/material.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/enums/wood_log_type.dart';

class DeleteLogDialog extends StatefulWidget {
  final WoodLog woodLog;
  final Function(bool) onDeleted;

  const DeleteLogDialog({super.key, required this.woodLog, required this.onDeleted});

  @override
  DeleteLogDialogState createState() => DeleteLogDialogState();
}

class DeleteLogDialogState extends State<DeleteLogDialog> {
  var reindex = true;

  void closeDialog() {
    Navigator.of(context).pop();
  }

  void _submit() async {
    widget.onDeleted(widget.woodLog.woodLogType == WoodLogType.raw ? false : reindex);

    closeDialog();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Opravdu chcete kus smazat?', textAlign: TextAlign.center),
          widget.woodLog.woodLogType != WoodLogType.raw ? const Text('Pokud zaškrtnete přeindexovat, tak se přepočítá číslování kusů.', textAlign: TextAlign.center) : Container(),
          const SizedBox(height: 20),
          widget.woodLog.woodLogType != WoodLogType.raw ? InkWell(
            onTap: () {
              setState(() {
                reindex = !reindex;
              });
            },
            child: Row(
              children: [
                Checkbox(
                  key: const Key(deleteLogCheckboxReindexKey),
                    value: reindex,
                    onChanged: (value) {
                  setState(() {
                    reindex = !reindex;
                  });
                }),
                const Text('Přeindexovat')
              ],
            ),
          ) : Container(),
        ],
      ),
      icon: const Icon(Icons.delete_forever),
      title: const Text('Smazat kus'),
      iconColor: warningColor,
      semanticLabel: 'Smazat kus',
      actions: [
        TextButton(
          key: const Key(deleteLogButtonCancelKey),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Zrušit'),
        ),
        TextButton(
          key: const Key(deleteLogButtonDeleteKey),
          onPressed: _submit,
          child: const Text('Smazat', style: TextStyle(color: warningColor)),
        ),
      ],
    );
  }

}