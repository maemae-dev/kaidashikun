import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/controllers/cuisine_list_controller.dart';
import 'package:kaidashikun/controllers/shopping_list_controller.dart';

class EditShoppingList extends ConsumerWidget {
  EditShoppingList({this.top = 0});

  final double top;
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(shoppingListController.state);
    final cuisines = watch(cuisineListController.state);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final cuisine = cuisines[index];
          final selected = state.cuisines.contains(cuisine);
          return ListTile(
            title: Text(cuisine.name),
            subtitle: Text('前回作成: '),
            trailing: selected
                ? Icon(
                    Icons.check,
                    color: Colors.black,
                  )
                : null,
            onTap: () => context.read(shoppingListController).onTap(cuisine),
          );
        },
        itemCount: cuisines.length,
      ),
    );
  }
}
