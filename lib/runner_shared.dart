import 'package:shop/src/feature/app/logic/main_runner.dart';
import 'package:shop/src/feature/app/shop_app.dart';

void sharedRun(InitializationHooks initializationHooks) => MainRunner.run(
      appBuilder: (initializationData) => ShopApp(
        initializationData: initializationData,
      ),
      hooks: initializationHooks,
    );
