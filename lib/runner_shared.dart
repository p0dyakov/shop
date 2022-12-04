import 'package:photo_editor/src/feature/app/logic/main_runner.dart';
import 'package:photo_editor/src/feature/app/photo_editor_app.dart';

void sharedRun(InitializationHooks initializationHooks) => MainRunner.run(
      appBuilder: (initializationData) => PhotoEditorApp(
        initializationData: initializationData,
      ),
      hooks: initializationHooks,
    );
