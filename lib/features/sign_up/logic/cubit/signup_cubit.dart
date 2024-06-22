import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:shop_app/features/sign_up/logic/cubit/signup_state.dart';

import '../../data/models/sign_up_request_body.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final SignUpRepo _signupRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  XFile? pickProfileImage;

  setProfileImage(XFile image) {
    pickProfileImage = image;
    emit(SignupState.uploadProfilePicture(image));
  }

  Future<void> emitSignupStates() async {
    if (pickProfileImage == null) {
      emit(const SignupState.error(error: 'Profile image is required'));
      return;
    }

    emit(const SignupState.signuploading());
    final response = await _signupRepo.signup(SignUpRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      image: pickProfileImage!.toString(),
    ));

    response.when(success: (signUpResponse) {
      emit(SignupState.signupSuccess(signUpResponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
