part of 'permissions_bloc.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState.needPermissions({
    required List<PermissionType> permissions,
  }) = PermissionsNeedPermissionsState;
  const factory PermissionsState.loading() = PermissionsLoadingState;
  const factory PermissionsState.loadSuccess() = PermissionsLoadSuccessState;
  const factory PermissionsState.loadFailure({
    required String error,
  }) = PermissionsLoadFailureState;
}
