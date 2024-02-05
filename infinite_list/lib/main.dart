import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_list/app.dart';
import 'package:infinite_list/observers/index.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const App());
}
