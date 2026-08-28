import 'package:flutter/widgets.dart';

import 'app/app_config.dart';
import 'app/app_dependencies.dart';
import 'app/callback_console_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final dependencies = AppDependencies.create(AppConfig.fromEnvironment());
  runApp(CallbackConsoleApp(dependencies: dependencies));
}
