import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'View/Screen/Profile.dart';
import 'l10n/l10n.dart';

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
        supportedLocales: L10n.all,
        localizationsDelegates: const[
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,

        ],

        title: title,
        home: Profile()
      ),
    );
  }
}