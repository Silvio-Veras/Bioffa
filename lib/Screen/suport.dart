import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Suport extends StatefulWidget {
  const Suport({super.key});

  @override
  State<Suport> createState() => _SuportState();
}

class _SuportState extends State<Suport> {
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Text(
              'Bioffa',
              style: TextStyle(fontSize: 80),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: CustomColors.customBlack),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/icons/whatsapp.png',
                    width: 35,
                  ),
                  const Text(
                    'Contate pelo Whatsapp',
                    style: TextStyle(
                        color: CustomColors.customWhite, fontSize: 20),
                  ),
                  const SizedBox()
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: CustomColors.customBlack),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/icons/email.png',
                    width: 35,
                    color: CustomColors.customWhite,
                  ),
                  const Text(
                    'Contate pelo E-mail',
                    style: TextStyle(
                        color: CustomColors.customWhite, fontSize: 20),
                  ),
                  const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
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
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.push('/perfil');
                    },
                    child: Image.asset(
                      'assets/icons/person.png',
                      width: 35,
                      color: CustomColors.customWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Perfil',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go('/home');
                    },
                    child: Image.asset(
                      'assets/icons/home.png',
                      width: 35,
                      color: CustomColors.customWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.push('/suport');
                    },
                    child: Image.asset(
                      'assets/icons/suport.png',
                      width: 35,
                      color: CustomColors.customWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Suporte',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
