import 'package:transmitter/src/feature/app/logic/main_runner.dart';
import 'package:transmitter/src/feature/app/transmitter_app.dart';

void sharedRun(InitializationHooks initializationHooks) => MainRunner.run(
      appBuilder: (initializationData) => TransmitterApp(
        initializationData: initializationData,
      ),
      hooks: initializationHooks,
    );
