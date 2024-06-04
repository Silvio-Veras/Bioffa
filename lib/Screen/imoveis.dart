import 'package:aplicativo_engenharia_de_software/Screen/Home.dart';
import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Imoveis extends StatefulWidget {
  const Imoveis({super.key});

  @override
  State<Imoveis> createState() => _ImoveisState();
}

class _ImoveisState extends State<Imoveis> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.07),
                        child: GestureDetector(
                          onTap: () => context.pop(),
                          child: SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            color: CustomColors.customWhite,
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/eye-open.svg',
                        color: CustomColors.customWhite,
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        child: const Text(
                          'Meus imoveis',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.customWhite),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: CustomColors.customGray, // Cor da borda
                          width: 1.0, // Largura da borda
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            color: CustomColors.customBlack,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(sugestaoHome['casa5']['nome']),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                                ],
                              ),
                              Text(
                                '${sugestaoHome['casa5']['endereco']['rua']} bairro:${sugestaoHome['casa5']['endereco']['bairro']}',
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Suites: ${sugestaoHome['casa5']['comodos']['suites']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Quartos: ${sugestaoHome['casa5']['comodos']['quartos']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Banheiros: ${sugestaoHome['casa5']['comodos']['banheiros']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Text(
                                    'RS 1.000',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.customPurpleBioffa),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: CustomColors.customGray, // Cor da borda
                          width: 1.0, // Largura da borda
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            color: CustomColors.customBlack,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(sugestaoHome['casa6']['nome']),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                                ],
                              ),
                              Text(
                                '${sugestaoHome['casa6']['endereco']['rua']} bairro:${sugestaoHome['casa6']['endereco']['bairro']}',
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Suites: ${sugestaoHome['casa6']['comodos']['suites']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Quartos: ${sugestaoHome['casa6']['comodos']['quartos']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Banheiros: ${sugestaoHome['casa6']['comodos']['banheiros']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Text(
                                    'RS 2.300',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.customPurpleBioffa),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: CustomColors.customGray, // Cor da borda
                          width: 1.0, // Largura da borda
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            color: CustomColors.customBlack,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(sugestaoHome['casa4']['nome']),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                                ],
                              ),
                              Text(
                                '${sugestaoHome['casa4']['endereco']['rua']} bairro:${sugestaoHome['casa4']['endereco']['bairro']}',
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Suites: ${sugestaoHome['casa4']['comodos']['suites']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Quartos: ${sugestaoHome['casa4']['comodos']['quartos']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Banheiros: ${sugestaoHome['casa4']['comodos']['banheiros']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Text(
                                    'RS 1.800',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.customPurpleBioffa),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: CustomColors.customGray, // Cor da borda
                          width: 1.0, // Largura da borda
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            color: CustomColors.customBlack,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(sugestaoHome['casa1']['nome']),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                                ],
                              ),
                              Text(
                                '${sugestaoHome['casa1']['endereco']['rua']} bairro:${sugestaoHome['casa1']['endereco']['bairro']}',
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Suites: ${sugestaoHome['casa1']['comodos']['suites']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Quartos: ${sugestaoHome['casa1']['comodos']['quartos']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Banheiros: ${sugestaoHome['casa1']['comodos']['banheiros']}',
                                style: const TextStyle(fontSize: 10),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/eye-open.svg',
                                    color: CustomColors.customBlack,
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Text(
                                    'RS 3.200',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.customPurpleBioffa),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
