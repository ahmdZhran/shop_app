import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:shop_app/features/profile/logic/cubit/profile_state.dart';
import '../../../core/utils/text_styles.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../widgets/edit_or_logout_button_widget.dart';
import '../widgets/profile_info_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    context.read<ProfileCubit>().getProfileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              profileDataLoading: () => Center(
                  child: CircularProgressIndicator(
                color: ColorManager.kPrimaryColor,
              )),
              profileDataSuccess: (profileUserResponse) {
                final profileData = profileUserResponse.data;

                return Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorManager.kPrimaryColor,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 55.r,
                          backgroundColor: ColorManager.kDarkGreyColor,
                          backgroundImage: NetworkImage(profileData.image),
                        ),
                      ),
                    ),
                    30.0.getVerticalSpacer(),
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.kBlackColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ProfileInfoWidget(
                        userName: profileData.name,
                        email: profileData.email,
                        phone: profileData.phone,
                      ),
                    ),
                    35.0.getVerticalSpacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 50.h,
                        width: 150,
                        child: CustomButton(
                          onPressed: () {},
                          text: Text(
                            'Log out',
                            style: CustomTextStyle.medium16.copyWith(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          color: ColorManager.kBlackColor,
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () {
                return const Center(child: Text("Something went wrong"));
              },
            );
          },
        ),
      ),
    );
  }
}
