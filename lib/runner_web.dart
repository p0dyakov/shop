import 'package:offline_messenger/runner_shared.dart' as runner;
import 'package:offline_messenger/src/feature/app/logic/main_runner.dart';

class WebInitializationHooks extends InitializationHooks {
  const WebInitializationHooks();
}

void run() => runner.sharedRun(const WebInitializationHooks());
