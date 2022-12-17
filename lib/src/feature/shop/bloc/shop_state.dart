part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.loading() = _Loading;
  const factory ShopState.loadSuccess() = _LoadSuccess;
  const factory ShopState.loadFailure({required String error}) = _LoadFailure;
}
