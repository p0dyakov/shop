import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/widget/center_text.dart';
import 'package:shop/src/feature/shop/bloc/shop_bloc.dart';
import 'package:shop/src/feature/shop/widget/scope/shop_scope.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ShopScope(
        child: Builder(
          builder: (context) => Scaffold(
            body: BlocBuilder<ShopBloc, ShopState>(
              builder: (context, state) => state.when(
                loading: (data) => Container(),
                loadSuccess: (data) => Container(),
                loadFailure: (data, error) => CenterText(text: error),
                searchFailure: (data) => Container(),
                searchSuccess: (data, products) => Container(),
              ),
            ),
          ),
        ),
      );
}
