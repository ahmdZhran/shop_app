import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/profile/data/repos/profile_repo.dart';

import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  final ProfileRepo _profileRepo;

  Future<void> getProfileData() async {
    emit(const ProfileState.profileDataLoading());
    final response = await _profileRepo.getProfileData();
    response.when(success: (profileUserData) {
      emit(ProfileState.profileDataSuccess(profileUserData));
    }, failure: (error) {
      emit(ProfileState.profileDataFailure(
          error: error.apiErrorModel.message ?? "something went wrong"));
    });
  }
}
