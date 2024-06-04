import 'package:aplicativo_engenharia_de_software/Screen/Home.dart';
import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Financeiro extends StatefulWidget {
  const Financeiro({super.key});

  @override
  State<Financeiro> createState() => _FinanceiroState();
}

class _FinanceiroState extends State<Financeiro> {
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
                          child: Image.asset(
                            'assets/icons/arrow_left.png',
                            width: 35,
                            color: CustomColors.customWhite,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icons/cifrao.png',
                        width: 35,
                        color: CustomColors.customWhite,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        child: const Text(
                          'Financeiro',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Saldo',
                    style: TextStyle(
                        fontSize: 25, color: CustomColors.customPurpleBioffa),
                  ),
                  const Text(
                    'R\$: 1.000,00',
                    style: TextStyle(
                        fontSize: 25, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: CustomColors.customGray, // Cor da borda
                        width: 1.0, // Largura da borda
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/casa.jpg',
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(sugestaoHome['casa1']['nome']),
                            Text(
                              '${sugestaoHome['casa1']['endereco']['rua']} bairro:${sugestaoHome['casa1']['endereco']['bairro']}',
                              style: const TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                const Text(
                                  'R\$ 3.000,00',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                ),
                                const Text(
                                  'Venc.: 25/04/2024',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: CustomColors.customPurpleBioffa),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: CustomColors.customGray, // Cor da borda
                        width: 1.0, // Largura da borda
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/casa1.jpg',
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(sugestaoHome['casa4']['nome']),
                            Text(
                              '${sugestaoHome['casa4']['endereco']['rua']} bairro:${sugestaoHome['casa4']['endereco']['bairro']}',
                              style: const TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                const Text(
                                  'R\$ 1.300,00',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.green),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                ),
                                const Text(
                                  'Venc.: 25/04/2024',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: CustomColors.customPurpleBioffa),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: CustomColors.customGray, // Cor da borda
                        width: 1.0, // Largura da borda
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/casa3.jpg',
                          height: MediaQuery.of(context).size.height * 0.08,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(sugestaoHome['casa6']['nome']),
                            Text(
                              '${sugestaoHome['casa6']['endereco']['rua']} bairro:${sugestaoHome['casa6']['endereco']['bairro']}',
                              style: const TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                const Text(
                                  'R\$ 2.000,00',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                ),
                                const Text(
                                  'Venc.: 31/06/2024',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: CustomColors.customPurpleBioffa),
                                )
                              ],
                            )
                          ],
                        )
                      ],
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
