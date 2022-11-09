import 'package:transmitter/runner_stub.dart'
    if (dart.library.io) 'package:transmitter/runner_io.dart'
    if (dart.library.html) 'package:transmitter/runner_web.dart' as runner;

void main() => runner.run();
