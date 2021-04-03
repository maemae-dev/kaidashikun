import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/food/food.dart';
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
            child: Column(
              children: [
                // TextFormField(
                //   initialValue: shopping.food.name,
                //   onChanged: (value) => context
                //       .read(cuisineEditController(cuisine))
                //       .updateShoppingName(shopping, value),
                // ),
                Autocomplete<Food>(
                  optionsViewBuilder: (context, onSelected, options) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        elevation: 4.0,
                        child: SizedBox(
                          height: 200.0,
                          child: ListView(
                            padding: EdgeInsets.all(8.0),
                            children: options
                                .map((option) => GestureDetector(
                                      onTap: () {
                                        onSelected(option);
                                      },
                                      child: ListTile(
                                        title: Text(option.name),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                    );
                  },
                  optionsBuilder: (editingValue) {
                    return Iterable.generate(
                        10, (idx) => Food(uid: '$idx', name: '$idx'));
                  },
                  fieldViewBuilder:
                      (context, controller, focusNode, onFieldSubmitted) =>
                          TextFormField(
                    focusNode: focusNode,
                    controller: controller,
                    onFieldSubmitted: (text) => onFieldSubmitted(),
                  ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('数量'),
        ),
        Flexible(
          flex: 1,
          child: TextFormField(
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
