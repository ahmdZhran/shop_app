import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_app/features/sign_up/data/repo/sign_up_rep.dart';
import 'package:shop_app/features/sign_up/logic/cubit/signup_state.dart';

import '../../data/models/sign_up_request_body.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final SignUpRepo _signupRepo;

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  XFile? pickPrifleImage;

  uploadProfilePick(XFile image) {
    pickPrifleImage = image;
    emit(SignupState.uploadProfilePicture(image));
  }

  emitSignupStates() async {
    emit(const SignupState.signuploading());
    final response = await _signupRepo.signup(SignUpRequestBody(
      name: fullnameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      // image: pickPrifleImage?.path
    ));
  }
}
