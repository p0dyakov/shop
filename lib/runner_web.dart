import 'package:photo_editor/runner_shared.dart' as runner;
import 'package:photo_editor/src/feature/app/logic/main_runner.dart';

class WebInitializationHooks extends InitializationHooks {
  const WebInitializationHooks();
}

void run() => runner.sharedRun(const WebInitializationHooks());
