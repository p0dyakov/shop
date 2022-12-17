import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/core/widget/bloc_scope.dart';
import 'package:shop/src/feature/shop/bloc/shop_bloc.dart';
import 'package:shop/src/feature/shop/model/shop.dart';

List<Shop> _shop(ShopState state) => state.data.shops;

class ShopScope extends StatelessWidget {
  final Widget child;

  const ShopScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  static const BlocScope<ShopEvent, ShopState, ShopBloc> _scope = BlocScope();

  static ScopeData<List<Shop>> get shopsOf => _scope.select(_shop);

  @override
  Widget build(BuildContext context) => BlocProvider<ShopBloc>(
        create: (context) => ShopBloc(context.repository.shop),
        child: child,
      );
}
