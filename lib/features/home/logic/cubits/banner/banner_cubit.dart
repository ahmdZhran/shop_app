import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/home/data/repos/banner/banner_repo.dart';
import 'banner_state.dart';

class BannerCubit extends Cubit<BannerState> {
  BannerCubit(this._bannerRepo) : super(const BannerState.initial());
  final BannerRepo _bannerRepo;

  void fetchBannerDate() async {
    emit(const BannerState.bannerLoading());
    final response = await _bannerRepo.getBannerDate();
    response.when(success: (bannerResponse) {
      emit(BannerState.bannerSuccess(bannerResponse));
    }, failure: (error) {
      emit(BannerState.bannerError(error: error.apiErrorModel.message ?? ""));
    });
  }
}
