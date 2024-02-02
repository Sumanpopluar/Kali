import 'package:flutter/material.dart';
import 'package:suman_s_kali_app/core/app_export.dart';
import 'package:suman_s_kali_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:suman_s_kali_app/widgets/app_bar/custom_app_bar.dart';
import 'package:suman_s_kali_app/widgets/custom_elevated_button.dart';
import 'package:suman_s_kali_app/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 28.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "Hello Again!",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Welcome Back You’ve Been Missed!",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 50.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    _buildEmail(context),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    _buildPassword(context),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Recovery Password",
                        style: CustomTextStyles.bodyMediumGray60013,
                      ),
                    ),
                    SizedBox(height: 27.v),
                    _buildSignIn(context),
                    SizedBox(height: 30.v),
                    _buildSignInWithGoogle(context),
                    Spacer(),
                    SizedBox(height: 21.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Don’t have an account?",
                            style: CustomTextStyles.bodySmallGray600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Sign Up for free",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgAppsCircle,
        margin: EdgeInsets.fromLTRB(20.h, 6.v, 311.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "AlissonBecker@gmail.com",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign In",
    );
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign in with google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillWhiteA,
      buttonTextStyle: CustomTextStyles.titleMedium18,
    );
  }
}
