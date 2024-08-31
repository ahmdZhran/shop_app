import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import '../../../core/widgets/back_arrow_button.dart';
import '../widgets/edit_or_logout_button_widget.dart';
import '../widgets/profile_info_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        leading: const BackArrowButton(),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorManager.kPrimaryColor,
                    )),
                child: CircleAvatar(
                  radius: 55.r,
                  backgroundColor: ColorManager.kDarkGreyColor,
                  backgroundImage:
                      const AssetImage('assets/images/backaground.webp'),
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
              child: const ProfileInfoWidget(),
            ),
            35.0.getVerticalSpacer(),
            const EditOrLogOutButtonsWidget()
          ],
        ),
      ),
    );
  }
}
