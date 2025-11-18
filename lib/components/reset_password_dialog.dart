import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/bloc/auth_bloc.dart';
import 'package:kubirovacka_one/bloc/auth_event.dart';
import 'package:kubirovacka_one/bloc/auth_state.dart';
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/components/loading_button.dart';
import 'package:kubirovacka_one/helpers/validation_helpers.dart';

import '../colors.dart';

class ResetPasswordDialog extends StatefulWidget {
  const ResetPasswordDialog({super.key});

  @override
  State<ResetPasswordDialog> createState() => _ResetPasswordDialogState();
}

class _ResetPasswordDialogState extends State<ResetPasswordDialog> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('E-mail odeslán'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Odeslali jsme vám e-mail s instrukcemi pro obnovu hesla.'),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 13),
              ),
              child: const Text('Zavřít'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthPasswordResetSuccessState) {
          Navigator.of(context).pop();
          _showConfirmationDialog();
        } else if (state is AuthPasswordResetFailedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error ?? 'Došlo k chybě.'),
              backgroundColor: warningColor,
            ),
          );
        }
      },
      child: Dialog(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Heading1('Resetovat heslo'),
                const SizedBox(height: 20),
                const Text(
                  'Zadejte svůj e-mail a my vám pošleme odkaz pro obnovu hesla.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                LabeledInput(
                  label: 'E-mail',
                  controller: _emailController,
                  validator: validateEmail,
                  type: TextInputType.emailAddress,
                  autofillHints: const [AutofillHints.email],
                ),
                const SizedBox(height: 20),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return LoadingButton(
                      isLoading: state is AuthPasswordResetProcessingState,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                            AuthPasswordResetRequestedEvent(
                              email: _emailController.text,
                            ),
                          );
                        }
                      },
                      color: primaryColor,
                      child: const Text('Odeslat'),
                    );
                  },
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                  child: const Text('Zrušit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}