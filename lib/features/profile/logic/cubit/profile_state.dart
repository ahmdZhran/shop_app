import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/features/profile/data/models/profile_user_response.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.profileDataLoading() = ProfileUserLoading;
  const factory ProfileState.profileDataSuccess(
      ProfileUserResponse profileUserResponse) = ProfileUserSuccess;
  const factory ProfileState.profileDataFailure({required String error}) =
      ProfileDataFailure;
}
