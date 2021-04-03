import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/screens/auth_reader.dart/auth_stream_provider.dart';
import 'package:kaidashikun/screens/auth_reader.dart/auth_reader_controller.dart';

class AuthReader extends ConsumerWidget {
  AuthReader({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(authReaderController.state);
    return ProviderListener<AsyncValue<User?>>(
      onChange: (context, user) {
        user.when(
            data: (user) {
              if (user == null && !state.isShowedDialog) {
                context.read(authReaderController).showDialog();
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('会員登録しますか？'),
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              // 登録の処理
                            },
                            child: Text('Apple'),
                          ),
                          SimpleDialogOption(
                            onPressed: () async {
                              await context
                                  .read(authReaderController)
                                  .createUserAnonymously();
                              Navigator.of(context).pop();
                            },
                            child: Text('Skip'),
                          )
                        ],
                      );
                    });
              } else {
                // FirebaseAuth.instance.signOut();
              }
            },
            loading: () => {},
            error: (_, __) => {});
      },
      provider: authStreamProvider,
      child: child,
    );
  }
}
