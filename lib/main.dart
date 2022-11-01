import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'Home.dart';
import 'View/Screen/Profile.dart';


  enum Actions { Increment }
   int counterReducer(int state, dynamic action) {
  return action == Actions.Increment ? state + 1 : state;
  }



void main() {
  final store = Store<int>(counterReducer, initialState: 0);

  runApp( FlutterReduxApp(
    store: store
    , title:"Candy_TODO",
  ));
}


