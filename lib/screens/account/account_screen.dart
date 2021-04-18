import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/screens/auth_reader/auth_reader_controller.dart';
import 'package:kaidashikun/screens/auth_reader/auth_stream_provider.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('ログアウト'),
            dense: true,
            onTap: () {
              final authUser = context.read(authStreamProvider).when(
                  data: (value) => value,
                  loading: () => null,
                  error: (_, __) => null);

              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('ログアウトしますか？'),
                  content: authUser?.isAnonymous ?? true
                      ? Text('登録されていないため、ログアウトすると2度と現在のデータに登録できません。')
                      : null,
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('キャンセル')),
                    TextButton(
                      onPressed: () {
                        context.read(authReaderController).signOut();
                      },
                      child: Text(
                        'ログアウト',
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
