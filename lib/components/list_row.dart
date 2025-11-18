import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/components/delete_list_dialog.dart';
import 'package:kubirovacka_one/components/list_edit_dialog.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/screens/dashboard/lists/bloc/lists_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/lists/bloc/lists_event.dart';
import 'package:kubirovacka_one/screens/dashboard/lists/bloc/lists_state.dart';

import '../colors.dart';
import '../models/wood_log_list.dart';

class ListRow extends StatelessWidget {
  final int index;
  final WoodLogList list;
  final Function onTap;
  final Function? onLongPress;
  final bool opened;

  const ListRow({super.key, required this.list, required this.opened, required this.onTap, required this.index, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    void deleteList() {
      if (opened) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            key: Key(listsSnackbarDeleteErrorKey),
            content: Text("Nemůžete smazat aktuálně otevřený seznam."),
            backgroundColor: warningColor,
          ),
        );
        return;
      }

      final outerContext = context;
      showDialog(
          context: context,
          builder: (context) => DeleteListDialog(
                onDeleted: () {
                  BlocProvider.of<ListsBloc>(outerContext).add(ListsListDeletedEvent(id: list.id));
                },
              ));
    }

    void showNoInternetAlert() {
      showNoInternetSnackbar(context);
    }

    void sendSyncRequest() {
      BlocProvider.of<ListsBloc>(context).add(ListsListSyncRequestedEvent(id: list.id));
    }

    void syncList() async {
      if (list.isCurrentVersionUploaded) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Aktuální verze seznamu je již nahraná.",
              textAlign: TextAlign.center,
            ),
            backgroundColor: tertiaryColor,
          ),
        );
        return;
      }

      if (!await isOnline()) {
        showNoInternetAlert();
        return;
      }
      sendSyncRequest();
    }

    void editList() {
      final outerContext = context;
      showDialog(
          context: context,
          builder: (context) => ListEditDialog(
                list: list,
                onListEdited: (String name, int rewardInCents) {
                  BlocProvider.of<ListsBloc>(outerContext).add(ListsListEditedEvent(id: list.id, name: name, rewardInCents: rewardInCents));
                },
              ));
    }

    return Column(
      children: [
        Container(
          color: lightGrayColor,
          height: 1,
        ),
        Container(
          color: opened ? primaryExtraTransparentColor : Colors.white,
          child: ListTile(
            title: Text(list.name),
            subtitle: Text(
                "${list.createdAt.day}.${list.createdAt.month}.${list.createdAt.year}, ${(list.rewardInCents / 100).toStringAsFixed(2)} Kč / m³"),
            onTap: () => onTap(),
            onLongPress: onLongPress != null ? () => onLongPress!() : null,
            trailing: Container(
              constraints: const BoxConstraints(maxWidth: 160),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: syncList,
                      icon: BlocBuilder<ListsBloc, ListsState>(builder: (context, state) {
                        return Icon(state.syncedLists.contains(list.id) ? Icons.sync : (list.isCurrentVersionUploaded ? Icons.cloud_done_sharp : Icons.cloud_upload_sharp));
                      })),
                  IconButton(onPressed: editList, icon: const Icon(Icons.edit)),
                  IconButton(
                    key: Key("$listsButtonDeleteKey$index"),
                    onPressed: deleteList,
                    icon: const Icon(Icons.delete_forever),
                    color: warningColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
