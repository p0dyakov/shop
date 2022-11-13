import 'package:offline_messenger/runner_stub.dart'
    if (dart.library.io) 'package:offline_messenger/runner_io.dart'
    if (dart.library.html) 'package:offline_messenger/runner_web.dart'
    as runner;

void main() => runner.run();
