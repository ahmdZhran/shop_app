import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/home/data/repos/products/products_repo.dart';

import 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._productsRepo) : super(const ProductsState.initial());
  final ProductsRepo _productsRepo;
  void fetchHomeProducts() async {
    emit(const ProductsState.productsLoading());
    final response = await _productsRepo.getHomeProducts();
    response.when(success: (productResponse) {
      emit(ProductsState.productsSuccess(productResponse));
    }, failure: (error) {
      emit(ProductsState.productsError(
          error: error.apiErrorModel.message ?? ""));
    });
  }
}
