import 'package:shop/runner_stub.dart'
    if (dart.library.io) 'package:shop/runner_io.dart'
    if (dart.library.html) 'package:shop/runner_web.dart' as runner;

void main() => runner.run();
