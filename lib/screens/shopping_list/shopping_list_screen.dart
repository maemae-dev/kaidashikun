import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/controllers/shopping_list_controller.dart';
import 'package:kaidashikun/screens/shopping_list/edit_shopping_list.dart';

class ShoppingListScreen extends ConsumerWidget {
  ShoppingListScreen();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(shoppingListController.state);

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final shopping = state.shoppings[index];
          return ListTile(
            title: Text(shopping.food?.name ?? ''),
            trailing: Text('${shopping.amount}'),
            onTap: () {},
          );
        },
        itemCount: state.shoppings.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) {
                return EditShoppingList();
              }));
        },
        child: Icon(Icons.edit_outlined),
      ),
    );
  }
}
