import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/shops_bloc/shops_bloc.dart';
import 'package:shop/src/feature/shop/widget/filters.dart';
import 'package:shop/src/feature/shop/widget/products_builder.dart';
import 'package:shop/src/feature/shop/widget/scope/shops_scope.dart';
import 'package:shop/src/feature/shop/widget/shops_builder.dart';
import 'package:shop/src/feature/shop/widget/title.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ShopsScope(
        child: BlocBuilder<ShopsBloc, ShopsState>(
          builder: (context, state) => Scaffold(
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 30),
                SearchWidget(
                  onChanged: (String query) =>
                      BlocProvider.of<ShopsBloc>(context).add(
                    ShopsEvent.searchProduct(
                      query: query,
                      weightValues: state.data.weightValues,
                      priceValues: state.data.priceValues,
                    ),
                  ),
                  hint: 'Search for a product in all shops',
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  child: FiltersWidget(
                    weightValues: state.data.weightValues,
                    priceValues: state.data.priceValues,
                    onFiltersChanged: (
                      SfRangeValues weightValues,
                      SfRangeValues priceValues,
                    ) =>
                        BlocProvider.of<ShopsBloc>(context).add(
                      ShopsEvent.changeValues(
                        weightValues: weightValues,
                        priceValues: priceValues,
                      ),
                    ),
                    onFiltersChangeEnd: (
                      SfRangeValues weightValues,
                      SfRangeValues priceValues,
                    ) =>
                        BlocProvider.of<ShopsBloc>(context).add(
                      ShopsEvent.searchProduct(
                        query: state.data.query,
                        weightValues: weightValues,
                        priceValues: priceValues,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                state.when(
                  loading: (data) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  ),
                  loadSuccess: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleWidget('Available Shops'),
                      ShopsBuilder(shops: data.shops),
                    ],
                  ),
                  failure: (data, error) => TitleWidget(error),
                  searchSuccess: (data, products) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TitleWidget('Search Results'),
                        ProductsBuilder(products: products),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
