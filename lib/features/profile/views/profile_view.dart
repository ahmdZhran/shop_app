import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/di/dependency_injection.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/router/routes.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:shop_app/features/profile/logic/cubit/profile_state.dart';
import '../../../core/utils/text_styles.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../widgets/profile_info_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
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
        child: BlocProvider(
          create: (context) => ProfileCubit(getIt())..getProfileData(),
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
                            onPressed: () => _showLogoutDialog(context),
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
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                context.pop();
                context.pushNamedAndRemoveUntil(
                  Routes.login,
                  predicate: (route) => false,
                );
              },
              child: Text(
                'Yes',
                style: TextStyle(color: ColorManager.kGreyColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
