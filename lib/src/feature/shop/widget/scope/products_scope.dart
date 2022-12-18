import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/widget/bloc_scope.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/products_bloc/products_bloc.dart';

Shop _shop(ProductsState state) => state.data.shop;

class ProductsScope extends StatelessWidget {
  final Widget child;
  final Shop shop;

  const ProductsScope({
    required this.child,
    Key? key,
    required this.shop,
  }) : super(key: key);

  static const BlocScope<ProductsEvent, ProductsState, ProductsBloc> _scope =
      BlocScope();

  static ScopeData<Shop> get shopOf => _scope.select(_shop);

  @override
  Widget build(BuildContext context) => BlocProvider<ProductsBloc>(
        create: (context) => ProductsBloc(shop),
        child: child,
      );
}
