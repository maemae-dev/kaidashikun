import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/controllers/cuisine_list_controller.dart';
import 'package:kaidashikun/screens/cuisine/cuisine_edit_screen.dart';

class CuisineListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(cuisineListController.state);
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final cuisine = state[index];
          return Dismissible(
            key: Key(cuisine.id!),
            direction: DismissDirection.endToStart,
            background: ColoredBox(color: Colors.red),
            onDismissed: (DismissDirection direction) {
              context.read(cuisineListController).delete(cuisine);
            },
            child: ListTile(
              title: Text(cuisine.name),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return CuisineEditScreen(cuisine);
                    },
                  ),
                );
              },
            ),
          );
        },
        itemCount: state.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) {
                return CuisineEditScreen(null);
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
