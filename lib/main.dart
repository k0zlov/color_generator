import 'package:color_generator/core/screen_factory/screen_factory.dart';
import 'package:color_generator/dependencies_injection.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await registerDependencies();

  runApp(ScreenFactory.renderApplication());
}
