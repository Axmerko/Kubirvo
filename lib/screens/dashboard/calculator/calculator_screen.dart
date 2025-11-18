import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kubirovacka_one/bloc/auth_bloc.dart';
import 'package:kubirovacka_one/bloc/auth_event.dart';
import 'package:kubirovacka_one/bloc/auth_state.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/components/calculator/calculator_summary_bar.dart';
import 'package:kubirovacka_one/components/confirm_danger_dialog.dart';
import 'package:kubirovacka_one/components/feedback_dialog.dart';
import 'package:kubirovacka_one/components/new_list_dialog.dart';
import 'package:kubirovacka_one/components/send_list_dialog.dart';
import 'package:kubirovacka_one/extensions/wood_log_extensions.dart';
import 'package:kubirovacka_one/helpers/web_helpers.dart';
import 'package:kubirovacka_one/helpers/whats_new_helper.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/kubirovacka_icons.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_event.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/fragments/calculator_log_list_fragment.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/fragments/calculator_raw_list_fragment.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/fragments/calculator_summary_fragment.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bloc/calculator_bloc.dart';
import 'bloc/calculator_state.dart';
import 'fragments/calculator_input_fragment.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  CalculatorScreenState createState() => CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentTabIndex = 1;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      setState(() {
        currentTabIndex = _tabController.index;
      });
    });

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showWhatsNewMessageIfNew(context);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorBloc()..add(InitCalculatorEvent()),
      child: Builder(
        builder: (context) {
          return _buildPage(context, _tabController);
        },
      ),
    );
  }

  Widget _buildPage(BuildContext context, TabController tabController) {
    final bloc = BlocProvider.of<CalculatorBloc>(context);

    void openListsScreen() async {
      final selectedList = await context.push('/dashboard/lists', extra: {"current_list_id": bloc.state.currentList?.id});
      if (selectedList != null) {
        bloc.add(CalculatorListChangedEvent(listId: selectedList as String));
      }
    }

    void openNewListDialog(bool firstList) {
      showDialog(
          context: context,
          barrierDismissible: !firstList,
          builder: (context) => NewListDialog(
                firstList: firstList,
                onListCreated: (String listName, int rewardInCents) {
                  bloc.add(CalculatorListCreatedEvent(listName: listName, rewardInCents: rewardInCents));
                },
              ));
    }

    void openSendListDialog() {
      var currentList = BlocProvider.of<CalculatorBloc>(context).state.currentList;
      if (currentList == null) return;
      showDialog(
          context: context,
          builder: (dialogContext) => SendListDialog(
                list: currentList,
                onListSent: () {},
                parentContext: context,
              ));
    }

    void signOut() {
      showDialog(
          context: context,
          builder: (context) => ConfirmDangerDialog(
              onSubmit: () {
                var authBloc = BlocProvider.of<AuthBloc>(context);
                authBloc.add(AuthUserLoggedOutEvent());
                context.go('/');
              },
              title: 'Odhlášení',
              description: 'Opravdu se chcete odhlásit?',
              submitButtonText: 'Odhlásit',
              icon: Icons.logout));
    }

    void sendFeedback() {
      showDialog(context: context, builder: (context) => const FeedbackDialog());
    }

    return BlocListener<CalculatorBloc, CalculatorState>(
      listener: (context, state) {
        if (state is CalculatorNoListOpenState) {
          openNewListDialog(true);
        }
      },
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
          if (!didPop && currentTabIndex != 1) {
            tabController.animateTo(1);
          }
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              leading: Container(
                margin: const EdgeInsets.only(left: 15),
                child: SvgPicture.asset(
                  'assets/img/icon_white.svg',
                  height: 50,
                ),
              ),
              actions: [
                BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Tooltip(
                      triggerMode: TooltipTriggerMode.tap,
                      message: state is AuthReadyState ? (state.isPremium ? 'Jste spojeni se serverem a prémium je aktivní' : 'Jste spojeni se serverem') : 'Probíhá spojování se serverem',
                      child:
                          ClipOval(child: Container(width: 18, height: 18, color: state is AuthNotReadyState ? Colors.orange : state.isPremium ? Colors.teal : Colors.greenAccent)),
                    ),
                  );
                }),
                IconButton(
                    key: const Key(calculatorMenuButtonFeedbackKey),
                    onPressed: () {
                      sendFeedback();
                    },
                    icon: const Icon(Icons.feedback)),
                IconButton(
                    key: const Key(calculatorMenuButtonStatsKey),
                    onPressed: () {
                      context.push('/dashboard/stats');
                    },
                    icon: const Icon(Icons.query_stats)),
                PopupMenuButton(
                    key: const Key(calculatorMenuButtonMenuKey),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<int>(
                            key: const Key(calculatorMenuButtonWebKey),
                            value: 0,
                            child: const Row(children: [
                              Icon(
                                Icons.web,
                                color: Colors.black,
                                size: 22,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Web')
                            ]),
                            onTap: () {
                              launchUrl(Uri.parse(getKubirovackaWebUrl()), mode: LaunchMode.externalApplication);
                            }),
                        PopupMenuItem(
                            key: const Key(calculatorMenuButtonFacebookKey),
                            child: const Row(children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.black,
                                size: 22,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Facebook')
                            ]),
                            onTap: () {
                              launchUrl(Uri.parse("https://www.facebook.com/kubirovacka"), mode: LaunchMode.externalApplication);
                            }),
                        PopupMenuItem(
                            key: const Key(calculatorMenuButtonLogoutKey),
                            onTap: () {
                              // Navigator.of(context).pop();
                              Future.delayed(const Duration(milliseconds: 200), () {
                                signOut();
                              });
                            },
                            child: const Row(children: [
                              Icon(
                                Icons.logout,
                                color: Colors.black,
                                size: 22,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Odhlásit se')
                            ])),
                      ];
                    }),
              ],
              bottom: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.white,
                dividerColor: primaryColor,
                tabs: const [
                  Tab(
                    key: Key(calculatorTabsTabRawsKey),
                    icon: Icon(KubIcons.tree),
                  ),
                  Tab(
                    key: Key(calculatorTabsTabInputKey),
                    icon: Icon(KubIcons.calculator),
                  ),
                  Tab(
                    key: Key(calculatorTabsTabLogsKey),
                    icon: Icon(Icons.list),
                  ),
                  Tab(
                    key: Key(calculatorTabsTabSummaryKey),
                    icon: Icon(Icons.summarize_outlined),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                BlocBuilder<CalculatorBloc, CalculatorState>(
                  builder: (context, state) {
                    if (state is CalculatorListOpenState) {
                      return CalculatorSummaryBar(
                        title: state.currentList!.name,
                        volume: currentTabIndex == 0
                            ? state.currentListLogsRaws!.sumVolume()
                            : (currentTabIndex == 2 ? state.currentListLogsClassicLogs!.sumVolume() : state.currentListLogs!.sumVolume()),
                        count: currentTabIndex == 0
                            ? state.currentListLogsRaws!.count()
                            : (currentTabIndex == 2 ? state.currentListLogsClassicLogs!.count() : state.currentListLogs!.count()),
                      );
                    } else {
                      return const CalculatorSummaryBar(title: 'Žádný seznam', volume: 0, count: 0);
                    }
                  },
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      CalculatorRawListFragment(),
                      CalculatorInputFragment(),
                      CalculatorLogListFragment(),
                      CalculatorSummaryFragment()
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (tapIndex) {
                switch (tapIndex) {
                  case 0:
                    openNewListDialog(false);
                    break;
                  case 1:
                    openListsScreen();
                    break;
                  case 2:
                    openSendListDialog();
                    break;

                  case 3:
                    SnackBar snackBar = const SnackBar(
                      content: Text(
                        'Na tomto ještě pracujeme 🛠️. Zatím můžete generovat reporty přes web.',
                        textAlign: TextAlign.center,
                      ),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.orange,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    break;
                }
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: primaryDarkColor,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(icon: Icon(key: Key(calculatorBottomBarButtonNewKey), Icons.playlist_add), label: 'Nový'),
                BottomNavigationBarItem(icon: Icon(key: Key(calculatorBottomBarButtonListsKey), Icons.list), label: 'Seznamy'),
                BottomNavigationBarItem(icon: Icon(key: Key(calculatorBottomBarButtonSendKey), Icons.send), label: 'Odeslat'),
                BottomNavigationBarItem(icon: Icon(key: Key(calculatorBottomBarButtonReportsKey), Icons.document_scanner), label: 'Reporty'),
              ],
            )),
      ),
    );
  }
}
