import 'package:flutter/material.dart';
import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HouseDetail1 extends StatefulWidget {
  const HouseDetail1({super.key});

  @override
  State<HouseDetail1> createState() => _HouseDetail1State();
}

class _HouseDetail1State extends State<HouseDetail1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                      0.1,
                      0.8,
                      0.1,
                      0.8,
                      0.2,
                    ],
                    colors: [
                      CustomColors.customBlueBioffa,
                      CustomColors.customPurpleBioffa,
                      CustomColors.customBlueBioffa,
                      CustomColors.customBlueBioffa,
                      CustomColors.customPurpleBioffa,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'BIOFFA',
                      style: TextStyle(
                          fontSize: 30, color: CustomColors.customWhite),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 40),
                    child: Text(
                      'Silvio Véras',
                      style: TextStyle(
                          fontSize: 20, color: CustomColors.customWhite),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 40, right: 40),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: CustomColors.customWhite)),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 40, right: 40),
                      child: Text(
                        'Saldo:',
                        style: TextStyle(
                            fontSize: 20, color: CustomColors.customWhite),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 40, right: 10),
                          child: Text(
                            'R\$ 1.000',
                            style: TextStyle(
                                fontSize: 20, color: CustomColors.customWhite),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SvgPicture.asset(
                          'assets/icons/eye-open.svg',
                          color: CustomColors.customWhite,
                          width: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
