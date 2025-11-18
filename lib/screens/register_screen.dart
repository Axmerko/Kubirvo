import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:kubirovacka_one/components/labeled_input.dart';
import 'package:kubirovacka_one/components/loading_button.dart';
import 'package:kubirovacka_one/extensions/string_extensions.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';
import 'package:kubirovacka_one/helpers/validation_helpers.dart';

import '../apis/api_client.dart';
import '../colors.dart';

final getIt = GetIt.instance;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _apiClient = getIt.get<ApiClient>();
  var _isLoading = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _doPostRegisterActions() {
    var snackBar = const SnackBar(
      content: Text('Registrace proběhla úspěšně. Na e-mail jsme vám zaslali potvrzovací odkaz.',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
      duration: Duration(seconds: 8),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    context.go('/login');
  }

  void _showNoInternetAlert() {
    showNoInternetSnackbar(context);
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      if (!await isOnline()) {
        _showNoInternetAlert();
        return;
      }
      TextInput.finishAutofillContext();

      setState(() {
        _firstNameController.text = _firstNameController.text.capitalize().trim();
        _lastNameController.text = _lastNameController.text.capitalize().trim();
        _emailController.text = _emailController.text.toLowerCase().unaccent().trim();
        _isLoading = true;
      });
      var lang = Platform.localeName.substring(0, 2);
      if (lang != 'cs' && lang != 'en' && lang != 'sk') {
        lang = 'en';
      }
      _apiClient.api
          .getUserApi()
          .apiMainUserPost(
            email: _emailController.text,
            firstName: _firstNameController.text,
            lastName: _lastNameController.text,
            password: _passwordController.text,
            locale: lang,
          )
          .then((value) {
        setState(() {
          _isLoading = false;
        });
        _doPostRegisterActions();
        return Future(() => {});
      }).onError((error, stackTrace) {
        setState(() {
          _isLoading = false;
        });
        if (error.toString().contains('Deserializing')) {
          _doPostRegisterActions();
        }
        if (error is DioException) {
          var responseBody = error.response?.data;
          if (responseBody != null) {
            var message = responseBody['message'];
            if (message != null) {
              if (context.mounted) {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: warningColor,
                content: Text(message.toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 18)),
                duration: const Duration(seconds: 5),
              ));
              }
            }
          }
        }
        return Future(() => {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          title: const Text('Registrujte se'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AutofillGroup(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              flex: 1,
                              child: LabeledInput(
                                controller: _firstNameController,
                                label: 'Jméno',
                                autofillHints: [AutofillHints.givenName],
                                prefixIcon: const Icon(Icons.person),
                                validator: validateNotEmpty,
                                type: TextInputType.name,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                              flex: 1,
                              child: LabeledInput(
                                controller: _lastNameController,
                                prefixIcon: const Icon(Icons.person),
                                label: 'Příjmení',
                                autofillHints: [AutofillHints.familyName],
                                validator: validateNotEmpty,
                                type: TextInputType.name,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LabeledInput(
                        controller: _emailController,
                        label: 'Email',
                        autofillHints: [AutofillHints.email],
                        prefixIcon: const Icon(Icons.email),
                        validator: validateEmail,
                        type: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                LabeledInput(
                  controller: _passwordController,
                  label: 'Heslo',
                  prefixIcon: const Icon(Icons.lock),
                  validator: validateNotEmpty,
                  type: TextInputType.visiblePassword,
                  isPasswordInput: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                LoadingButton(
                  onPressed: _register,
                  isLoading: _isLoading,
                  color: secondaryColor,
                  child: const Text('Registrovat'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(onPressed: () {
                  context.go('/login');
                }, child: const Text('Již máte účet?')),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Kliknutím na tlačítko "Registrovat" souhlasíte s podmínkami používání aplikace.',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
