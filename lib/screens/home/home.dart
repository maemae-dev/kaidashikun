import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/screens/account/account_screen.dart';
import 'package:kaidashikun/screens/auth_reader/auth_reader.dart';
import 'package:kaidashikun/screens/cuisine/cuisine_list_screen.dart';
import 'package:kaidashikun/screens/home/home_controller.dart';
import 'package:kaidashikun/screens/shopping_list/shopping_list_screen.dart';

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(appController.state);

    return Scaffold(
      appBar: AppBar(),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: context.read(appController.state).controller,
        children: <Widget>[
          CuisineListScreen(),
          ShoppingListScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: '料理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'リスト',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイページ')
        ],
        onTap: context.read(appController).handleTap,
      ),
    );
  }
}
