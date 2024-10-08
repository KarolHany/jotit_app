import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// BlocObserver is a class provided by the flutter_bloc package that allows you to observe and react to changes in the state of your Blocs and Cubits globally.
class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change : $change');

  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('onClose : $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
   debugPrint('onCreate : $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError : $error');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
   debugPrint('onEvent : $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
   debugPrint('onTransition : $transition');
  }
}
