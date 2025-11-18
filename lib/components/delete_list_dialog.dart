import 'package:flutter/material.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/keys.dart';

class DeleteListDialog extends StatefulWidget {
  final Function() onDeleted;

  const DeleteListDialog({super.key, required this.onDeleted});

  @override
  DeleteListDialogState createState() => DeleteListDialogState();
}

class DeleteListDialogState extends State<DeleteListDialog> {
  var reindex = true;

  void closeDialog() {
    Navigator.of(context).pop();
  }

  void _submit() async {
    widget.onDeleted();

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
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Opravdu chcete seznam smazat?', textAlign: TextAlign.center),
          Text('Pokud je seznam již synchronizovaný se serverem, tak ho budete mít stále přístupný na webu.', textAlign: TextAlign.center),
        ],
      ),
      icon: const Icon(Icons.delete_forever),
      title: const Text('Smazat seznam'),
      iconColor: warningColor,
      semanticLabel: 'Smazat seznam',
      actions: [
        TextButton(
          key: const Key(deleteListButtonCancelKey),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Zrušit'),
        ),
        TextButton(
          key: const Key(deleteListButtonDeleteKey),
          onPressed: _submit,
          child: const Text('Smazat', style: TextStyle(color: warningColor)),
        ),
      ],
    );
  }

}