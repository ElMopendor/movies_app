import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/injection.dart';

import 'package:kueski_movies_app/presentation/core/app_widget.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env.dev');
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);

  runApp(const AppWidget());
}
