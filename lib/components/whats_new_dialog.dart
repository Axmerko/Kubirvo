import 'package:flutter/material.dart';
import 'package:kubirovacka_one/components/heading_2.dart';
import 'package:kubirovacka_one/helpers/web_helpers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'heading_1.dart';

class WhatsNewDialog extends StatelessWidget {
  final List<String> features;
  final List<String> bugfixes;
  final String version;

  const WhatsNewDialog({super.key, required this.features, required this.bugfixes, required this.version});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      children: [
                        const Heading1(
                          'Co je nového?',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Verze: $version',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  if (features.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Heading2('Nové funkce'),
                          const SizedBox(
                            height: 5,
                          ),
                          ...features.map((feat) => ListTile(
                            leading: const Icon(Icons.rocket_launch_rounded, color: Colors.green),
                            title: Text(feat),
                            visualDensity: VisualDensity(vertical: -3),
                            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                          ))
                        ],
                      ),
                    ),
                  if (bugfixes.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Heading2('Opravy'),
                          const SizedBox(
                            height: 5,
                          ),
                          ...bugfixes.map((fix) => ListTile(
                            leading: const Icon(Icons.bug_report_rounded, color: Colors.green),
                            title: Text(fix),
                            visualDensity: VisualDensity(vertical: -3),
                            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                          ))
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Jdu na to!'),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
