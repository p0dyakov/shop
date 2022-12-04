import 'package:photo_editor/runner_shared.dart' as runner;
import 'package:photo_editor/src/feature/app/logic/main_runner.dart';

class IoInitializationHooks extends InitializationHooks {
  const IoInitializationHooks();
}

void run() => runner.sharedRun(const IoInitializationHooks());
