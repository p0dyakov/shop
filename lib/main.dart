import 'package:photo_editor/runner_stub.dart'
    if (dart.library.io) 'package:photo_editor/runner_io.dart'
    if (dart.library.html) 'package:photo_editor/runner_web.dart' as runner;

void main() => runner.run();
