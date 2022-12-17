import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/router/app_router.dart';
import 'package:shop/src/core/widget/center_text.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/bloc/shop_bloc.dart';
import 'package:shop/src/feature/shop/widget/scope/shop_scope.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ShopScope(
        child: Builder(
          builder: (context) => Scaffold(
            body: BlocBuilder<ShopBloc, ShopState>(
              builder: (context, state) => state.when(
                loading: (data) => const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
                loadSuccess: (data) => ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 30),
                    SearchWidget(
                      onSubmit: () {},
                      hint: 'Search for a product in all shops',
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: 5,
                      ),
                      child: Text(
                        'Available Shops',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ShopCardWidget(
                        shop: data.shops[index],
                        onTap: () => context.router.push(
                          ShopProductsRoute(shop: data.shops[index]),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 5),
                      itemCount: data.shops.length,
                    )
                  ],
                ),
                loadFailure: (data, error) => CenterText(text: error),
                searchFailure: (data) => Container(),
                searchSuccess: (data, products) => Container(),
              ),
            ),
          ),
        ),
      );
}
