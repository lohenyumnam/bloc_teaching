import 'package:bloc_teaching/router/router.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() {
  final _appRouter = AppRouter();
  runApp(App(appRouter: _appRouter));
}
