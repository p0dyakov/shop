import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/core/widget/scope/bloc_scope.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/shops_bloc/shops_bloc.dart';

List<Shop> _shops(ShopsState state) => state.data.shops;

class ShopsScope extends StatelessWidget {
  final Widget child;

  const ShopsScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  static const BlocScope<ShopsEvent, ShopsState, ShopsBloc> _scope =
      BlocScope();

  static ScopeData<List<Shop>> get shopsOf => _scope.select(_shops);

  @override
  Widget build(BuildContext context) => BlocProvider<ShopsBloc>(
        create: (context) => ShopsBloc(context.repository.shop),
        child: child,
      );
}
