import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/injection.dart';

import 'package:kueski_movies_app/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);

  runApp(const AppWidget());
}
