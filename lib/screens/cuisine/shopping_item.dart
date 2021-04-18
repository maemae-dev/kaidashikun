import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';
import 'package:kaidashikun/screens/cuisine/cuisine_edit_controller.dart';

class ShoppingItem extends ConsumerWidget {
  ShoppingItem(this.cuisine, this.shopping);
  final Cuisine? cuisine;
  final Shopping shopping;
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Row(
      children: [
        Flexible(
          flex: 4,
          child: TextFormField(
            decoration: InputDecoration(hintText: '食材'),
            initialValue: shopping.food?.name ?? '',
            onChanged: (value) => context
                .read(cuisineEditController(cuisine))
                .updateShoppingName(shopping, value),
          ),
        ),
        SizedBox(width: 8),
        Flexible(
          flex: 1,
          child: TextFormField(
            decoration: InputDecoration(hintText: '数量'),
            keyboardType: TextInputType.number,
            initialValue: '${shopping.amount}',
            onChanged: (amount) => context
                .read(cuisineEditController(cuisine))
                .updateShoppingAmount(shopping, amount),
          ),
        ),
      ],
    );
  }
}
