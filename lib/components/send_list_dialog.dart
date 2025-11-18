import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart' hide WoodLogList;
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/components/loading_button.dart';
import 'package:kubirovacka_one/components/premium_dialog.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';
import 'package:kubirovacka_one/helpers/premium_helper.dart';
import 'package:kubirovacka_one/helpers/validation_helpers.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/wood_log_list.dart';
import 'package:path_provider/path_provider.dart';

import '../apis/api_client.dart';
import '../colors.dart';
import '../helpers/xlsx_helper.dart';
import '../services/scheduler_service.dart';

final getIt = GetIt.instance;

class SendListDialog extends StatefulWidget {
  final WoodLogList list;
  final Function onListSent;
  final BuildContext parentContext;

  const SendListDialog({super.key, required this.list, required this.onListSent, required this.parentContext});

  @override
  SendListDialogState createState() => SendListDialogState();
}

class SendListDialogState extends State<SendListDialog> {
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _apiClient = getIt.get<ApiClient>();
  final _scheduleService = getIt.get<SchedulerService>();

  String _sendMethod = 'link';
  bool isLoading = false;
  String? _errorMessage;

  void _showSuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Seznam byl úspěšně odeslán.'),
        backgroundColor: tertiaryColor,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void closeDialog() {
    Navigator.of(context).pop();
  }

  Future _shareViaApi() async {
    setState(() {
      isLoading = true;
    });

    await _scheduleService.syncList(widget.list.id);

    var dtoBuilder = ShareLogListDTOBuilder()
      ..email = _emailController.text
      ..message = _messageController.text
      ..woodLogListIds = ListBuilder<String>([widget.list.id]);

    await _apiClient.api.getSharedLogsListApi().apiMainSharedLogsListPost(shareLogListDTO: dtoBuilder.build());

    setState(() {
      isLoading = false;
    });

    _showSuccessSnackBar();
  }

  Future _sendXlsx(bool detailedRaws) async {
    var generatedExcel = await generateExcelReport(widget.list, detailedRaws);

    final fileBytes = generatedExcel.save();
    if (fileBytes == null) {
      setState(() {
        _errorMessage = 'Chyba při generování XLSX souboru.';
      });
      return;
    }

    final directory = await getTemporaryDirectory();
    final fileName = "Prehled_${DateTime.now().millisecondsSinceEpoch}.xlsx";
    final path = '${directory.path}/$fileName';
    final file = File(path);
    await file.writeAsBytes(fileBytes, flush: true);

    final Email email = Email(
      body: _messageController.text,
      subject: 'Přehled z Kubírovačky',
      recipients: [_emailController.text],
      attachmentPaths: [path],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
    } catch (error) {
      setState(() {
        _errorMessage = 'Chyba při odesílání e-mailu: $error';
      });
    }
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;

    if (_sendMethod == 'link') {
      if (!await isOnline()) {
        if (context.mounted) {
          // ignore: use_build_context_synchronously
          showNoInternetSnackbar(context);
        }
      }
      await _shareViaApi();
      widget.onListSent();

      closeDialog();
    } else if (_sendMethod == 'xlsx') {
      doIfPremium(
        context,
        ifPremium: () {
          _sendXlsx(false).then((res) {
            widget.onListSent();
            closeDialog();
          });
        },
      );
    } else if (_sendMethod == 'xlsx_detailed') {
      doIfPremium(
        context,
        ifPremium: (){
          _sendXlsx(true).then((res) {
            widget.onListSent();
            closeDialog();
          });
        },
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _messageController.text = 'Zde je seznam kubíků z aplikace Kubirováčka One. Můžete si ho prohlédnout a případně stáhnout.';
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: true,
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
                        'Odeslat seznam',
                      ),
                      const Text(
                        'Seznam můžete odeslat buďto jako odkaz na stránky Kubírovačka, nebo jako soubor ve formátu XLSX (Excel).',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: lightGrayColor,
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(8),
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              value: _sendMethod,
                              items: [
                                DropdownMenuItem<String>(
                                  value: 'link',
                                  child: Text('Odkaz na web'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'xlsx_detailed',
                                  child: Text('XLSX'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'xlsx',
                                  child: Text('XLSX (suráky dle kat.)'),
                                )
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _sendMethod = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LabeledInput(
                          label: 'E-mail',
                          controller: _emailController,
                          validator: validateEmail,
                          inputKey: const Key(sendListInputEmailKey),
                          type: TextInputType.emailAddress),
                      const SizedBox(
                        height: 10,
                      ),
                      LabeledInput(
                          label: 'Zpráva pro příjemce', maxLines: 3, controller: _messageController, inputKey: const Key(sendListInputMessageKey)),
                      const SizedBox(
                        height: 10,
                      ),
                      if (_errorMessage != null)
                        Text(
                          _errorMessage!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          LoadingButton(
                            isLoading: isLoading,
                            color: primaryColor,
                            key: const Key(newListButtonCreateKey),
                            onPressed: _submit,
                            child: const Text('Odeslat'),
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
