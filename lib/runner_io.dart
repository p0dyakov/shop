import 'package:offline_messenger/runner_shared.dart' as runner;
import 'package:offline_messenger/src/feature/app/logic/main_runner.dart';

class IoInitializationHooks extends InitializationHooks {
  const IoInitializationHooks();
}

void run() => runner.sharedRun(const IoInitializationHooks());
