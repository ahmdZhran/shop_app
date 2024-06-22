import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/utils/color_manager.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../logic/cubit/signup_state.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        return SizedBox(
          width: 100,
          height: 100,
          child: context.read<SignupCubit>().pickProfileImage == null
              ? CircleAvatar(
                  backgroundColor: ColorManager.kPrimaryColor,
                  backgroundImage:
                      const AssetImage("assets/images/profile.png"),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: () async {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: ColorManager.kPrimaryColor,
                              border:
                                  Border.all(color: Colors.black12, width: 3),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                ImagePicker()
                                    .pickImage(source: ImageSource.gallery)
                                    .then((image) => context
                                        .read<SignupCubit>()
                                        .setProfileImage(image!));
                              },
                              child: Icon(
                                Icons.camera_alt_sharp,
                                color: ColorManager.kDarkColor,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : CircleAvatar(
                  backgroundImage: FileImage(
                    File(context.read<SignupCubit>().pickProfileImage!.path),
                  ),
                ),
        );
      },
    );
  }
}
