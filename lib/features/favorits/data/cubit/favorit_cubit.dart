import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/favorite_item_model.dart';

part 'favorit_state.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit() : super(const FavoritState.initial());
}
