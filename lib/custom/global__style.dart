import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomColors {
  static const Color customGray = Color.fromRGBO(85, 85, 87, 0.6);
  static const Color customGrayText = Color.fromRGBO(134, 134, 134, 1);
  static const Color customBlack = Color.fromRGBO(14, 14, 14, 1);
  static const Color customWhite = Color.fromRGBO(255, 255, 255, 1);
  static const Color customWhiteLight = Color.fromRGBO(204, 204, 204, 1);
  static const Color customBlue = Color.fromRGBO(0, 102, 198, 1);
  static const Color customTransparent = Color.fromRGBO(255, 255, 255, 0);
  static const Color customGreen = Color.fromRGBO(57, 175, 74, 1);
  static const Color customOrange = Color.fromRGBO(235, 90, 36, 1);
  static const Color customYellow = Color.fromRGBO(246, 232, 33, 1);
  static const Color customBlueLight = Color.fromRGBO(47, 156, 214, 1);
  static const Color customBlueBioffa = Color.fromRGBO(145, 251, 255, 0.700);
  static const Color customPurpleBioffa = Color.fromRGBO(127, 129, 233, 0.8);
}

class AppTheme {
  static ThemeData applicationTheme() {
    return ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: CustomColors.customWhite,
        dividerColor: CustomColors.customBlack,
        colorScheme: ColorScheme.fromSwatch().copyWith(
            background: CustomColors.customWhite,
            secondary: CustomColors.customBlue,
            surfaceTint: CustomColors.customWhite));
  }
}

const boldTextLogin = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w600,
    color: CustomColors.customPurpleBioffa,
    fontFamily: 'lovelo');

const boldTextRecoverPassword = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: CustomColors.customPurpleBioffa,
    fontFamily: 'lovelo');

const loginEntraLogin = TextStyle(
    fontSize: 21, fontWeight: FontWeight.w600, color: CustomColors.customWhite);
const textBoldH1 = TextStyle(
    fontSize: 19, fontWeight: FontWeight.w600, color: CustomColors.customWhite);
const registerDados = TextStyle(
    fontSize: 21, fontWeight: FontWeight.w600, color: CustomColors.customBlack);
const textFieldBlue = TextStyle(
    color: CustomColors.customBlue, fontSize: 16, fontWeight: FontWeight.w600);
const textTextFieldGray = TextStyle(
    color: CustomColors.customGray, fontSize: 16, fontWeight: FontWeight.w600);
const textNavBar = TextStyle(
    color: CustomColors.customGrayText,
    fontSize: 12,
    fontWeight: FontWeight.w100);
const textParcientes = TextStyle(
    color: CustomColors.customWhite, fontSize: 16, fontWeight: FontWeight.w600);
const textParcientesNumero = TextStyle(
    color: CustomColors.customWhite, fontSize: 13, fontWeight: FontWeight.w600);
ButtonStyle buttonEntrarLogin(BuildContext context) {
  return ElevatedButton.styleFrom(
    fixedSize: Size(MediaQuery.of(context).size.width * 0.50,
        MediaQuery.of(context).size.height * 0.08),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    backgroundColor: CustomColors.customPurpleBioffa,
    // padding: const EdgeInsets.all(10),
    elevation: 0,
  );
}

ButtonStyle buttonSenhaBiometria(BuildContext context) {
  return ElevatedButton.styleFrom(
    fixedSize: Size(MediaQuery.of(context).size.width * 0.39,
        MediaQuery.of(context).size.height * 0.07),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    backgroundColor: CustomColors.customBlack,
    // padding: const EdgeInsets.all(10),
    elevation: 0,
  );
}

Widget buttonEntrar(BuildContext context, texto, icon, router) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0),
    child: ElevatedButton(
      onPressed: () {
        context.push(router);
      },
      style: buttonEntrarLogin(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texto,
            style: loginEntraLogin,
          ),
          // ignore: deprecated_member_use
          SvgPicture.asset(
            'assets/icons/$icon.svg',
            // ignore: deprecated_member_use
            color: CustomColors.customGray,
          )
        ],
      ),
    ),
  );
}
