import 'package:flutter/material.dart';
import 'package:transmitter/src/feature/discovery/widget/scope/discovery_scope.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) => DiscoveryScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Discovery device to pair'),
            actions: const [],
          ),
          body: Container(),
        ),
      );
}
