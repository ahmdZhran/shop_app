import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/home/data/repo/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  void fetchBannerDate() async {
    emit(const HomeState.bannerLoading());
    final response = await _homeRepo.getBannerDate();
    response.when(success: (bannerResponse) {
      emit(HomeState.bannerSuccess(bannerResponse));
    }, failure: (error) {
      emit(HomeState.bannerError(error: error.apiErrorModel.message ?? ""));
    });
  }

  void fetchCategories() async {
    emit(const HomeState.categoryLoading());
    final response = await _homeRepo.getCategories();
    response.when(success: (categoryResponse) {
      emit(HomeState.categorySuccess(categoryResponse));
    }, failure: (error) {
      emit(HomeState.categoryError(error: error.apiErrorModel.message ?? ""));
    });
  }
}
