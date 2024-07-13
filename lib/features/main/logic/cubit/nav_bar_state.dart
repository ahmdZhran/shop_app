import 'package:freezed_annotation/freezed_annotation.dart';
import '../enums/nav_bar_enum.dart';

part 'nav_bar_state.freezed.dart';

@freezed
class NavBarState with _$NavBarState {
  const factory NavBarState.initial() = _Initial;

  const factory NavBarState.iconSelected(NavBarEnum navBarEnum) = IconSelected;
}
