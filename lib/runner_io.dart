import 'package:transmitter/runner_shared.dart' as runner;
import 'package:transmitter/src/feature/app/logic/main_runner.dart';

class IoInitializationHooks extends InitializationHooks {
  const IoInitializationHooks();
}

void run() => runner.sharedRun(const IoInitializationHooks());