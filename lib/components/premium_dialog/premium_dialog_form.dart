import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/components/loading_button.dart';
import 'package:kubirovacka_one/helpers/web_helpers.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../colors.dart';
import 'bloc/subscription_bloc.dart';
import 'bloc/subscription_event.dart';
import 'bloc/subscription_state.dart';

class PremiumDialogForm extends StatefulWidget {
  const PremiumDialogForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PremiumDialogFormState();
}

class PremiumDialogFormState extends State<PremiumDialogForm> {
  final _subscriptionMap = <String, String>{
    'kub_premium_monthly': 'Měsíční',
    'kub_premium_yearly': 'Roční',
  };

  void _purchasePremiumInApp(SubscriptionState state) {
    if (state is SubscriptionReadyState) {
      BlocProvider.of<SubscriptionBloc>(context).add(SubscriptionPurchasePremiumEvent(state.formData.selectedProductId));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Data o předplatném se teprve načítají.')));
    }
  }

  void _openPremiumWeb() {
    launchUrl(Uri.parse(getKubirovackaWebUrl(next: "purchasePremium")), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
      builder: (context, state) {
        return SizedBox(
          height: state.formData.isCompanyPurchase ? 330 : null,
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  state is SubscriptionReadyState
                      ? ToggleButtons(
                          isSelected: [...state.products.map((e) => state.formData.selectedProductId == e.id)],
                          onPressed: (index) {
                            context
                                .read<SubscriptionBloc>()
                                .add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(selectedProductId: state.products[index].id)));
                          },
                          children: [
                            ...state.products.map((e) => _subscriptionMap[e.id]).map((e) => Padding(
                                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 40, right: 40),
                                  child: Text(e ?? ''),
                                ))
                          ],
                        )
                      : Container(),
                  const SizedBox(
                    height: 5,
                  ),
                  state is SubscriptionReadyState
                      ? InkWell(
                          onTap: () {
                            context
                                .read<SubscriptionBloc>()
                                .add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(isCompanyPurchase: !state.formData.isCompanyPurchase)));
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                  value: state.formData.isCompanyPurchase,
                                  onChanged: (value) {
                                    context.read<SubscriptionBloc>().add(SubscriptionUpdateFormDataEvent(
                                        state.formData.copyWith(isCompanyPurchase: !state.formData.isCompanyPurchase)));
                                  }),
                              const Text('Nakupuji na firmu'),
                            ],
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                    !state.formData.isCompanyPurchase
                        ? Container()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                onChanged: (value) {
                                  context.read<SubscriptionBloc>().add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(companyName: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Název firmy',
                                ),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  context
                                      .read<SubscriptionBloc>()
                                      .add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(companyCountry: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Země',
                                ),
                                initialValue: state.formData.companyCountry,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  context.read<SubscriptionBloc>().add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(companyCity: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Město',
                                ),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  context
                                      .read<SubscriptionBloc>()
                                      .add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(companyStreetAndNumber: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Ulice a č.p.',
                                ),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  context
                                      .read<SubscriptionBloc>()
                                      .add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(companyZipCode: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'PSČ',
                                ),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  context.read<SubscriptionBloc>().add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(vatNum: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'IČ',
                                ),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  context.read<SubscriptionBloc>().add(SubscriptionUpdateFormDataEvent(state.formData.copyWith(taxId: value)));
                                },
                                decoration: const InputDecoration(
                                  labelText: 'DIČ',
                                ),
                              ),
                            ],
                          ),

                    const SizedBox(
                      height: 10,
                    ),
                    state is SubscriptionReadyState || state is SubscriptionLoadingState || state is SubscriptionPurchasePendingState
                        ? LoadingButton(
                            onPressed: () => _purchasePremiumInApp(state),
                            isLoading: state is SubscriptionLoadingState || state is SubscriptionPurchasePendingState,
                            color: primaryColor,
                            child: const Text('Získat prémium'),
                          )
                        : Container(),
                    state is SubscriptionPurchaseErrorState || state is SubscriptionUnavailableState
                        ? ElevatedButton(
                            onPressed: () {
                              _openPremiumWeb();
                            },
                            child: const Text('Koupit přes web'),
                          )
                        : Container(),
                    state is SubscriptionPurchasePendingState
                        ? const Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Zavřít'),
                              ),
                            ],
                          )
                  ])
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
