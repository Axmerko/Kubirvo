import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/colors.dart';

import '../apis/api_client.dart';
import '../helpers/validation_helpers.dart';
import 'heading_1.dart';
import 'labeled_input.dart';

final getIt = GetIt.instance;

class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({super.key});

  @override
  FeedbackDialogState createState() => FeedbackDialogState();
}

class FeedbackDialogState extends State<FeedbackDialog> {
  final _apiClient = getIt.get<ApiClient>();
  final _formKey = GlobalKey<FormState>();
  final _feedbackController = TextEditingController();
  var _errorMessage = '';

  void closeDialog() {
    Navigator.of(context).pop();
  }

  void _showSuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Zpětná vazba byla odeslána. Děkujeme!'),
      backgroundColor: tertiaryColor,
    ));
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final dtoBuilder = FeedbackDTOBuilder()..message = _feedbackController.text;
    try {
      await _apiClient.api.getFeedbackApi().apiMainFeedbackPost(feedbackDTO: dtoBuilder.build());
      _showSuccessSnackBar();
      closeDialog();
    } catch (e) {
      if (e is DioException) {
        var responseBody = e.response?.data;
        if (responseBody != null) {
          var message = responseBody['message'];
          if (message != null) {
            setState(() {
              _errorMessage = message;
            });
          } else {
            setState(() {
              _errorMessage = 'Nepodařilo se odeslat zpětnou vazbu. Zkuste to prosím později.';
            });
          }
        }
      } else {
        setState(() {
          _errorMessage = 'Nepodařilo se odeslat zpětnou vazbu. Zkuste to prosím později.';
        });
      }
    }
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
                  'Zpětná vazba',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Našli jste chybu, nebo máte nápad na zlepšení?",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                LabeledInput(label: 'Zpětná vazba', controller: _feedbackController, validator: validateNotEmpty),
                _errorMessage.isNotEmpty
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(_errorMessage, style: const TextStyle(color: warningColor)),
                        ],
                      )
                    : Container(),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
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
