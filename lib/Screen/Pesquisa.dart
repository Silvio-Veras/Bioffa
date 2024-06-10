import 'package:aplicativo_engenharia_de_software/Screen/Home.dart';
import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  int selectedType = 1;
  final ValueNotifier<int> hasChanged = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ValueListenableBuilder<int>(
              valueListenable: hasChanged,
              builder: (BuildContext context, int value, Widget? child) {
                return Column(children: [
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 20),
                          child: TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customGrayText),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customWhite,
                              hintStyle: const TextStyle(
                                  color: CustomColors.customGrayText),
                              border: const OutlineInputBorder(),
                              hintText: 'Pesquisar',
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Image.asset(
                                  'assets/icons/ping.png',
                                  width: 35,
                                  color: CustomColors.customGray,
                                ),
                              ),
                              prefixIcon: IntrinsicHeight(
                                child: SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        'assets/icons/arrow_left.png',
                                        width: 35,
                                        color: CustomColors.customGray,
                                      ),
                                      const VerticalDivider(
                                        color: CustomColors.customGray,
                                        thickness: 0.5,
                                        indent: 10,
                                        endIndent: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 12.0,
                                          bottom: 12.0,
                                          right: 12.0,
                                        ),
                                        child: Image.asset(
                                          'assets/icons/lupa.png',
                                          width: 35,
                                          color: CustomColors.customGray,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 40),
                              child: GestureDetector(
                                onTap: () {
                                  selectedType = 1;
                                  hasChanged.value++;
                                },
                                child: Text(
                                  'Todos',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: () {
                                        if (selectedType == 1) {
                                          return CustomColors.customBlack;
                                        } else {
                                          return CustomColors.customWhite;
                                        }
                                      }()),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 40),
                              child: GestureDetector(
                                onTap: () {
                                  selectedType = 2;
                                  hasChanged.value++;
                                },
                                child: Text(
                                  'Populares',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: () {
                                        if (selectedType == 2) {
                                          return CustomColors.customBlack;
                                        } else {
                                          return CustomColors.customWhite;
                                        }
                                      }()),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 40),
                              child: GestureDetector(
                                onTap: () {
                                  selectedType = 3;
                                  hasChanged.value++;
                                },
                                child: Text(
                                  'Favoritos',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: () {
                                        if (selectedType == 3) {
                                          return CustomColors.customBlack;
                                        } else {
                                          return CustomColors.customWhite;
                                        }
                                      }()),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 40, right: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: CustomColors.customWhite)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.03),
                    child: () {
                      if (selectedType == 1) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa1']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
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
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa1.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa2']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${sugestaoHome['casa2']['endereco']['rua']} bairro:${sugestaoHome['casa2']['endereco']['bairro']}',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Suites: ${sugestaoHome['casa2']['comodos']['suites']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Quartos: ${sugestaoHome['casa2']['comodos']['quartos']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Banheiros: ${sugestaoHome['casa2']['comodos']['banheiros']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa3.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa3']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${sugestaoHome['casa3']['endereco']['rua']} bairro:${sugestaoHome['casa3']['endereco']['bairro']}',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Suites: ${sugestaoHome['casa3']['comodos']['suites']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Quartos: ${sugestaoHome['casa3']['comodos']['quartos']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Banheiros: ${sugestaoHome['casa3']['comodos']['banheiros']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa4.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.11,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa4']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
                                              color: CustomColors.customGray,
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
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa5.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.09,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa5']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
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
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 2.200',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa6.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa6']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              color: CustomColors.customGray,
                                              width: 20,
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
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 2,
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
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                        );
                      } else if (selectedType == 2) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa3.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa3']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${sugestaoHome['casa3']['endereco']['rua']} bairro:${sugestaoHome['casa3']['endereco']['bairro']}',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Suites: ${sugestaoHome['casa3']['comodos']['suites']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Quartos: ${sugestaoHome['casa3']['comodos']['quartos']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Banheiros: ${sugestaoHome['casa3']['comodos']['banheiros']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa4.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.11,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa4']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
                                              color: CustomColors.customGray,
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
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa5.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.09,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa5']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
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
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 2.200',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa6.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa6']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              color: CustomColors.customGray,
                                              width: 20,
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
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 2,
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
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                        );
                      } else {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa1.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa2']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 25,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${sugestaoHome['casa2']['endereco']['rua']} bairro:${sugestaoHome['casa2']['endereco']['bairro']}',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Suites: ${sugestaoHome['casa2']['comodos']['suites']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Quartos: ${sugestaoHome['casa2']['comodos']['quartos']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          'Banheiros: ${sugestaoHome['casa2']['comodos']['banheiros']}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              'RS 3.000',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color:
                                        CustomColors.customGray, // Cor da borda
                                    width: 1.0, // Largura da borda
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/casa6.jpg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(sugestaoHome['casa6']['nome']),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/icons/heart.png',
                                              width: 20,
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
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Image.asset(
                                              'assets/icons/star.png',
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const SizedBox(
                                              width: 2,
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
                                                  color: CustomColors
                                                      .customPurpleBioffa),
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
                        );
                      }
                    }(),
                  ),
                ]);
              }),
        ),
      ),
    );
  }
}
