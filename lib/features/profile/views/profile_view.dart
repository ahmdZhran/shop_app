import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:shop_app/features/profile/logic/cubit/profile_state.dart';
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
              profileDataLoading: () =>
                  const Center(child: CircularProgressIndicator()),
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
                    const EditOrLogOutButtonsWidget(),
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
