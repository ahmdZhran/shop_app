import 'package:flutter_bloc/flutter_bloc.dart';

import 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(const ProductsState.initial());
}
