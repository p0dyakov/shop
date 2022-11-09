import 'package:transmitter/runner_shared.dart' as runner;
import 'package:transmitter/src/feature/app/logic/main_runner.dart';

class WebInitializationHooks extends InitializationHooks {
  const WebInitializationHooks();
}

void run() => runner.sharedRun(const WebInitializationHooks());
