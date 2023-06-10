import 'package:blocker/localization/cubit/locale_cubit.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '/widgets/custom_button.dart';
import '/widgets/custom_icon_button.dart';
import 'bloc/login_active_state_bloc.dart';
import 'models/login_active_state_model.dart';

class LoginActiveStateScreen extends StatelessWidget {
  const LoginActiveStateScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginActiveStateBloc>(
      create: (context) => LoginActiveStateBloc(LoginActiveStateState(
        loginActiveStateModelObj: LoginActiveStateModel(),
      ))
        ..add(LoginActiveStateInitialEvent()),
      child: const LoginActiveStateScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginActiveStateBloc, LoginActiveStateState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 24,
                top: 4,
                right: 24,
                bottom: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 48,
                    width: 48,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Text(
                      "Sign in".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBahijTheSansArabicBold24.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.3,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Welcome..don't be absent for too long".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBahijTheSansArabicSemiBold16.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 23,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 13,
                      right: 20,
                      bottom: 13,
                    ),
                    decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "user name".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtBahijTheSansArabicSemiBold16Bluegray300
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.2,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            left: 12,
                            top: 2,
                            bottom: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 16,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 16,
                      right: 20,
                      bottom: 16,
                    ),
                    decoration: AppDecoration.outlineIndigo900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgSettings,
                          height: getVerticalSize(
                            13,
                          ),
                          width: getHorizontalSize(
                            64,
                          ),
                          margin: getMargin(
                            top: 5,
                            bottom: 5,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLock,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            left: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 15,
                      ),
                      child: Text(
                        "Forgot your password?".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBahijTheSansArabicSemiBold14BlueA400,
                      ),
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      56,
                    ),
                    text: "log in".tr,
                    margin: getMargin(
                      top: 21,
                    ),
                    padding: ButtonPadding.PaddingAll14,
                    fontStyle: ButtonFontStyle.BahijTheSansArabicBold16,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 29,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 12,
                            bottom: 9,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(
                              96,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray100,
                            ),
                          ),
                        ),
                        Text(
                          "Register now".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtBahijTheSansArabicSemiBold14Bluegray300,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 12,
                            bottom: 9,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(
                              96,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: const EdgeInsets.all(0),
                          color: ColorConstant.gray50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              56,
                            ),
                            width: getHorizontalSize(
                              155,
                            ),
                            padding: getPadding(
                              top: 16,
                              bottom: 16,
                            ),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgGoogle,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: const EdgeInsets.all(0),
                          color: ColorConstant.gray50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              56,
                            ),
                            width: getHorizontalSize(
                              155,
                            ),
                            padding: getPadding(
                              top: 16,
                              bottom: 16,
                            ),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgAkariconsfacebookfill,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: InkWell(
              onTap: () {
                BlocProvider.of<LocaleCubit>(context).toggleLocale();
              },
              child: Padding(
                padding: getPadding(
                  left: 84,
                  right: 84,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "Change Language".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBahijTheSansArabicBold14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
