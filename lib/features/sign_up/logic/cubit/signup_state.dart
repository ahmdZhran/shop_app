import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.loading() = Loading;

  const factory SignupState.success() = Success;

  const factory SignupState.failure() = Failure;

  const factory SignupState.uploadProfilePicture(XFile image) =
      UploadProfilePicture;
}
