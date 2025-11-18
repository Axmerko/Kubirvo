import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kubirovacka_one/bloc/auth_bloc.dart';
import 'package:kubirovacka_one/bloc/auth_event.dart';
import 'package:kubirovacka_one/bloc/auth_state.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/components/loading_button.dart';
import 'package:kubirovacka_one/components/reset_password_dialog.dart';
import 'package:kubirovacka_one/extensions/string_extensions.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';
import 'package:kubirovacka_one/helpers/validation_helpers.dart';
import 'package:kubirovacka_one/keys.dart';

import '../colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showNoInternetAlert() {
    showNoInternetSnackbar(context);
  }

  void _sendLoginEvent() {
    var bloc = BlocProvider.of<AuthBloc>(context);
    if (_formKey.currentState!.validate()) {
      setState(() {
        _emailController.text = _emailController.text.toLowerCase().unaccent().trim();
      });
      bloc.add(AuthUserLoggedInEvent(email: _emailController.text, password: _passwordController.text));
    }
  }


  void _login() async {
    if (!await isOnline()) {
      _showNoInternetAlert();
      return;
    }

    TextInput.finishAutofillContext();
    _sendLoginEvent();
  }

  void _showResetPasswordDialog() {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return const ResetPasswordDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          title: const Text('Přihlásit se'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthLoginFailedState) {
              if (state.error != null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  key: const Key(loginSnackbarErrorKey),
                  backgroundColor: warningColor,
                  content: Text(state.error!, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18)),
                  duration: const Duration(seconds: 5),
                ));
              }
            } else if (state is AuthNotReadyState || state is AuthReadyState) {
              context.go('/dashboard/calculator');
            }
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: AutofillGroup(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    LabeledInput(
                      inputKey: const Key(loginInputEmailKey),
                      autofillHints: const [AutofillHints.email],
                      controller: _emailController,
                      label: 'E-mail',
                      prefixIcon: const Icon(Icons.email),
                      validator: validateEmail,
                      type: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LabeledInput(
                      inputKey: const Key(loginInputPasswordKey),
                      controller: _passwordController,
                      label: 'Heslo',
                      autofillHints: const [AutofillHints.password],
                      prefixIcon: const Icon(Icons.lock),
                      validator: validateNotEmpty,
                      type: TextInputType.visiblePassword,
                      isPasswordInput: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return LoadingButton(
                          buttonKey: const Key(loginButtonLoginKey),
                          onPressed: _login,
                          isLoading: state is AuthLoginProcessingState,
                          color: secondaryColor,
                          child: const Text('Přihlásit se'),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: _showResetPasswordDialog,
                            child: const Text('Zapomenuté heslo?')),
                        TextButton(
                            key: const Key(loginButtonRegisterKey),
                            onPressed: () {
                              context.go('/register');
                            },
                            child: const Text('Ještě nemáte účet?')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}