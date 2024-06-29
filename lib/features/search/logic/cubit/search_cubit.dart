import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/search/logic/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());
}
