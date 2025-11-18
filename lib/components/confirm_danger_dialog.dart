import 'package:flutter/material.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/keys.dart';

class ConfirmDangerDialog extends StatefulWidget {
  final Function() onSubmit;
  final String title;
  final String description;
  final String submitButtonText;
  final String cancelButtonText;
  final IconData icon;

  const ConfirmDangerDialog(
      {super.key,
      required this.onSubmit,
      required this.title,
      required this.description,
      required this.submitButtonText,
      required this.icon,
      this.cancelButtonText = 'Zrušit'});

  @override
  ConfirmDangerDialogState createState() => ConfirmDangerDialogState();
}

class ConfirmDangerDialogState extends State<ConfirmDangerDialog> {
  void closeDialog() {
    Navigator.of(context).pop();
  }

  void _submit() async {
    widget.onSubmit();
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
      content: Text(widget.description, textAlign: TextAlign.center),
      icon: Icon(widget.icon),
      title: Text(widget.title),
      iconColor: warningColor,
      semanticLabel: widget.title,
      actions: [
        TextButton(
          key: const Key(dangerDialogButtonCancelKey),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(widget.cancelButtonText),
        ),
        TextButton(
          key: const Key(dangerDialogButtonSubmitKey),
          onPressed: _submit,
          child: Text(widget.submitButtonText, style: const TextStyle(color: warningColor)),
        ),
      ],
    );
  }
}
