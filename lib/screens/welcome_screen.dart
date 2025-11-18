import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kubirovacka_one/keys.dart';

import '../colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    SvgPicture.asset(
                      'assets/img/icon_primary_thick_no_padding.svg',
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'KUBÍROVAČKA',
                      style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Nástroj pro lesáky 21. století',
                      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        key: const Key(welcomeButtonRegisterKey),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          // backgroundColor: primaryColor.withAlpha(200),
                          backgroundColor: primaryColor,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          context.go('/register');
                        },
                        child: const Text('Začínáme'),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextButton(
                        key: const Key(welcomeButtonLoginKey),
                        onPressed: () {
                          context.go('/login');
                        },
                        child: const Text(
                          'Již mám účet',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.22),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 300,
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '9 tisíc spokojených uživatelů',
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '10 tisíc výpočtů denně',
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '250 tisíc zálohovaných seznamů',
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '10 milionů vypočítaných kusů',
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
