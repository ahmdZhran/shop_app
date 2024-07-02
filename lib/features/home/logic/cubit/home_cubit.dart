import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  void fetchCategories() async {
    emit(const HomeState.categoryLoading());
    final response = await _homeRepo.getCategories();
    response.when(success: (categoryResponse) {
      emit(HomeState.categorySuccess(categoryResponse));
    }, failure: (error) {
      emit(HomeState.categoryError(error: error.apiErrorModel.message ?? ""));
    });
  }

  void fetchHomeProducts() async {
    emit(const HomeState.productsLoading());
    final response = await _homeRepo.getHomeProducts();
    response.when(success: (productResponse) {
      emit(HomeState.productsSuccess(productResponse));
    }, failure: (error) {
      emit(HomeState.productsError(error: error.apiErrorModel.message ?? ""));
    });
  }
}
