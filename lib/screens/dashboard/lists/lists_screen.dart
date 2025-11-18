import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/components/list_row.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/screens/dashboard/lists/bloc/lists_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/lists/bloc/lists_state.dart';

import 'bloc/lists_event.dart';

class ListsScreen extends StatelessWidget {
  final String? currentListId;
  const ListsScreen({super.key, this.currentListId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ListsBloc()..add(InitListsEvent()),
        child: Builder(builder: (context) {
          return _buildPage(context);
        }));
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<ListsBloc>(context);

    void selectList(String listId) {
      bloc.add(ListsListOpenedEvent(listId: listId));
      context.pop(listId);
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          title: const Text('Seznamy'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         context.go('/dashboard/stats');
          //       },
          //       icon: const Icon(Icons.query_stats)),
          //   IconButton(
          //       onPressed: () {
          //         context.go('/settings');
          //       },
          //       icon: const Icon(Icons.settings))
          // ],
        ),
        body: Column(children: [
          BlocBuilder<ListsBloc, ListsState>(
            builder: (context, state) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.lists.length,
                  itemBuilder: (context, index) {
                    return ListRow(
                        key: Key("$listsListTileListKey$index"),
                        index: index,
                        list: state.lists[index],
                        opened: state.lists[index].id == currentListId,
                        onTap: () {
                          selectList(state.lists[index].id);
                        },);
                  },
                ),
              );
            },
          ),
        ]));
  }
}
