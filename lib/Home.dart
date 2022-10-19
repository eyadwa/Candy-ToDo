import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'View/Screen/Profile.dart';

class FlutterReduxApp extends StatelessWidget {
  FlutterReduxApp({Key? key, required this.store, required this.title})
      : super(key: key);
  final Store<int> store;
  final String title;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        title: title,
        home: Profile()
      ),
    );
  }
}