import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/components/premium_dialog/bloc/subscription_state.dart';
import 'package:kubirovacka_one/components/premium_dialog/premium_dialog_form.dart';
import 'package:kubirovacka_one/helpers/web_helpers.dart';
import 'package:url_launcher/url_launcher.dart';

import '../heading_1.dart';
import '../loading_button.dart';
import 'bloc/subscription_bloc.dart';
import 'bloc/subscription_event.dart';

class PremiumDialog extends StatefulWidget {
  const PremiumDialog({Key? key}) : super(key: key);

  @override
  PremiumDialogState createState() => PremiumDialogState();
}

class PremiumDialogState extends State<PremiumDialog> {
  Widget premiumFeature(String text) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.check, color: Colors.green),
          const SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SubscriptionBloc()..add(SubscriptionInitEvent()),
        child: Builder(
          builder: (context) => _buildPage(context),
        ));
  }

  Widget _renderError(String error) {
    return Column(
      children: [
        Text(
          error,
          style: const TextStyle(color: warningColor),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _renderSuccess() {
    return const Column(
      children: [
        Text(
          'Prémiový účet byl úspěšně zakoupen. Aktivace premium účtu může chvíli trvat, prosíme o strpení.',
          style: TextStyle(color: Colors.green),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _buildPage(BuildContext context) {
    return Dialog(
        child: Padding(
      padding: const EdgeInsets.all(28.0),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Heading1(
              'Prémiová funkce',
            ),
            const Text(
              'Tato funkce je dostupná pouze pro prémiové uživatele.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<SubscriptionBloc, SubscriptionState>(
              builder: (context, state) {
                return state.formData.isCompanyPurchase
                    ? Container()
                    : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                        const Text(
                          'Prémiový účet nabízí:',
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            premiumFeature('Aplikaci bez reklam'),
                            premiumFeature('Módy nastojato a bez kůry'),
                            premiumFeature('Statistiky a grafy'),
                            premiumFeature('Odesílání dat jako CSV'),
                            premiumFeature('Reporty'),
                            premiumFeature('Vlastní sortimenty'),
                            premiumFeature('a další...'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ]);
              },
            ),
            BlocBuilder<SubscriptionBloc, SubscriptionState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    state is SubscriptionPurchaseErrorState ? _renderError('Nepodařilo se dokončit platbu. Chyba: ${state.error}') : Container(),
                    state is SubscriptionUnavailableState ? _renderError(state.error) : Container(),
                    state is SubscriptionPurchaseSuccessState ? _renderSuccess() : Container(),
                    state is SubscriptionReadyState || state is SubscriptionLoadingState || state is SubscriptionPurchasePendingState
                        ? const PremiumDialogForm()
                        : Container(),
                  ],
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
