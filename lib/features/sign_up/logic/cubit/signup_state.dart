import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signuploading() = Loading;

  const factory SignupState.signupSuccess(T data) = Success<T>;

  const factory SignupState.error({required String error}) = Error;

  const factory SignupState.uploadProfilePicture(XFile image) =
      UploadProfilePicture;
}
