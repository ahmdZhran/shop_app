import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/main/logic/enums/nav_bar_enum.dart';

import 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(const NavBarState.initial());

  NavBarEnum navBarEnum = NavBarEnum.home;

  void iconSelected(NavBarEnum newNavBarEnum) {
    navBarEnum = newNavBarEnum;
    emit(NavBarState.iconSelected(navBarEnum));
  }
}
