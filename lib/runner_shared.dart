import 'package:offline_messenger/src/feature/app/logic/main_runner.dart';
import 'package:offline_messenger/src/feature/app/offline_messenger_app.dart';

void sharedRun(InitializationHooks initializationHooks) => MainRunner.run(
      appBuilder: (initializationData) => OfflineMessengerApp(
        initializationData: initializationData,
      ),
      hooks: initializationHooks,
    );
