import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/screens/cuisine/cuisine_edit_controller.dart';
import 'package:kaidashikun/screens/cuisine/shopping_item.dart';
import 'package:kaidashikun/utils/l10n.dart';

class CuisineEditScreen extends ConsumerWidget {
  CuisineEditScreen(this.cuisine);

  final Cuisine? cuisine;
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(cuisineEditController(cuisine).state);
    return Scaffold(
      appBar: AppBar(
        title: Text(state.name),
        actions: [
          IconButton(
            icon: Icon(Icons.save_outlined),
            onPressed: () {
              context.read(cuisineEditController(cuisine)).onSave();
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextFormField(
                initialValue: state.name,
                decoration: InputDecoration(hintText: '料理名'),
                onChanged: context
                    .read(cuisineEditController(cuisine))
                    .updateCuisineName,
              ),
              TextButton.icon(
                onPressed: () {
                  context.read(cuisineEditController(cuisine)).addShopping();
                },
                icon: Icon(Icons.add),
                label: Text(L10n.of(context)?.addCuisine ?? ''),
              ),
              ...state.shoppings
                  .map((shopping) => ShoppingItem(cuisine, shopping))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
