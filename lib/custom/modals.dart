import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

homeButton(
  String text,
  icon,
  context,
  rota,
) {
  return GestureDetector(
    onTap: () => rota,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CustomColors.customPurpleBioffa),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.27,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            icon,
            height: 35,
            color: CustomColors.customWhite,
          ),
          Text(
            text,
            style:
                const TextStyle(fontSize: 18, color: CustomColors.customWhite),
          )
        ],
      ),
    ),
  );
}
