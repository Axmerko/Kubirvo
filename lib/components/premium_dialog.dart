import 'package:flutter/material.dart';
import 'package:kubirovacka_one/helpers/web_helpers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'heading_1.dart';

class PremiumDialog extends StatefulWidget {
  const PremiumDialog({super.key});

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

  void _getPremium() {
    launchUrl(Uri.parse(getKubirovackaWebUrl(next: "purchasePremium")), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
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
            const Text('Prémiový účet nabízí:', textAlign: TextAlign.start,),
            const SizedBox(height: 5,),
            Column(
              children: [
                premiumFeature('Aplikaci bez reklam'),
                premiumFeature('Módy nastojato a bez kůry'),
                premiumFeature('Statistiky a grafy'),
                premiumFeature('Odesílání dat jako XLSX (Excel)'),
                premiumFeature('Reporty'),
                premiumFeature('Vlastní sortimenty'),
                premiumFeature('a další...'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: _getPremium,
                  child: const Text('Získat prémium'),
                ),
                Column(
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
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
