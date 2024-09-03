import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_toast.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_text_form_fields.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../logic/cubit/login_state.dart';

class EmailAndPasswordFields extends StatefulWidget {
  const EmailAndPasswordFields({super.key});

  @override
  State<EmailAndPasswordFields> createState() => _EmailAndPasswordFieldsState();
}

class _EmailAndPasswordFieldsState extends State<EmailAndPasswordFields> {
  bool isPasswordShown = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: ColorManager.kPrimaryColor,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.mainScreen);
          },
          error: (error) {
            ShowToast.showToastErrorBottom(message: error);
            context.pop();
          },
        );
      },
      child: Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            20.0.getVerticalSpacer(),
            CustomTextFormField(
              controller: context.read<LoginCubit>().emailController,
              labelText: AppStrings.emailAddress,
            ),
            20.0.getVerticalSpacer(),
            CustomTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              obscureText: isPasswordShown,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordShown = !isPasswordShown;
                  });
                },
                icon: Icon(
                  isPasswordShown
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
              labelText: AppStrings.password,
            ),
            40.0.getVerticalSpacer(),
            CustomButton(
              onPressed: () {
                validateThenDoLogin(context);
              },
              text: Text(
                AppStrings.login,
                style: CustomTextStyle.semiBold16.copyWith(fontSize: 15.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
