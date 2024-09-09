import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/categories/categories_repo.dart';

import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this._categoriesRepo) : super(const CategoriesState.initial());
  final CategoriesRepo _categoriesRepo;
  void fetchCategories() async {
    emit(const CategoriesState.categoryLoading());
    final response = await _categoriesRepo.getCategories();
    response.when(success: (categoryResponse) {
      emit(CategoriesState.categorySuccess(categoryResponse));
    }, failure: (error) {
      emit(CategoriesState.categoryError(error: error.apiErrorModel.message ?? ""));
    });
  }
}
