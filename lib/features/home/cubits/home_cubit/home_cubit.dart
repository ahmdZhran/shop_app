import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/home_repo/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepository) : super(const HomeState.initial());

  final HomeRepository _homeRepository;

  void fetchBannerData() async {
    emit(const HomeState.bannerLoading());
    final response = await _homeRepository.getBannerData();
    response.when(
      success: (bannerResponse) {
        emit(HomeState.bannerSuccess(bannerResponse));
      },
      failure: (error) {
        emit(HomeState.bannerError(error: error.apiErrorModel.message ?? ""));
      },
    );
  }

  void fetchCategories() async {
    emit(const HomeState.categoryLoading());
    final response = await _homeRepository.getCategories();
    response.when(
      success: (categoryResponse) {
        emit(HomeState.categorySuccess(categoryResponse));
      },
      failure: (error) {
        emit(HomeState.categoryError(error: error.apiErrorModel.message ?? ""));
      },
    );
  }

  void fetchHomeProducts() async {
    emit(const HomeState.productsLoading());
    final response = await _homeRepository.getHomeProducts();
    response.when(
      success: (productResponse) {
        emit(HomeState.productsSuccess(productResponse));
      },
      failure: (error) {
        emit(HomeState.productsError(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
