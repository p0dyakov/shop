import 'package:flutter/material.dart';
import 'package:shop/src/core/widget/scope/scope.dart';
import 'package:shop/src/feature/app/logic/error_tracking_manager.dart';

class AppLifecycleScope extends Scope {
  // ignore: unused_field
  static const DelegateAccess<_AppLifecycleScopeDelegate> _delegateOf =
      Scope.delegateOf<AppLifecycleScope, _AppLifecycleScopeDelegate>;

  final ErrorTrackingDisabler errorTrackingDisabler;

  const AppLifecycleScope({
    required this.errorTrackingDisabler,
    required Widget child,
    Key? key,
  }) : super(child: child, key: key);

  @override
  ScopeDelegate<AppLifecycleScope> createDelegate() =>
      _AppLifecycleScopeDelegate();
}

class _AppLifecycleScopeDelegate extends ScopeDelegate<AppLifecycleScope> {
  Future<void> _cancelSentrySubscription() async {
    await widget.errorTrackingDisabler.disableReporting();
  }

  @override
  void dispose() {
    _cancelSentrySubscription();
    super.dispose();
  }
}
