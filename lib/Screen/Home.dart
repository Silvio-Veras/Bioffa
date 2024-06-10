import 'package:aplicativo_engenharia_de_software/content/drawer.dart';
import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

Map<String, dynamic> sugestaoHome = {
  'casa1': {
    'nome': 'Casa Divinópolis',
    'endereco': {'rua': 'Rua Bahia', 'bairro': 'Divinópolis', 'numero': '5'},
    'comodos': {'suites': '1', 'banheiros': '2', 'quartos': '3'},
    'avaliacao': {'estrelas': '4', 'comentarios': '12'}
  },
  'casa2': {
    'nome': 'Casa Riachão',
    'endereco': {
      'rua': 'Rua Alferes Jorge',
      'bairro': 'Riachão',
      'numero': '723'
    },
    'comodos': {'suites': '1', 'banheiros': '1', 'quartos': '1'},
    'avaliacao': {'estrelas': '3', 'comentarios': '3'}
  },
  'casa3': {
    'nome': 'Casa Nassau',
    'endereco': {
      'rua': 'Rua Doze',
      'bairro': 'Maurício de Nassau',
      'numero': '18'
    },
    'comodos': {'suites': '1', 'banheiros': '1', 'quartos': '2'},
    'avaliacao': {'estrelas': '4', 'comentarios': '4'}
  },
  'casa4': {
    'nome': 'Casa Kennedy',
    'endereco': {
      'rua': 'Rua Alferes Jorge',
      'bairro': 'Vila kennedy',
      'numero': '14'
    },
    'comodos': {'suites': '1', 'banheiros': '2', 'quartos': '2'},
    'avaliacao': {'estrelas': '5', 'comentarios': '17'}
  },
  'casa5': {
    'nome': 'Casa Panorama',
    'endereco': {'rua': 'Rua Humberto', 'bairro': 'Panorama', 'numero': '189'},
    'comodos': {'suites': '1', 'banheiros': '1', 'quartos': '1'},
    'avaliacao': {'estrelas': '3', 'comentarios': '3'}
  },
  'casa6': {
    'nome': 'Casa Salgado',
    'endereco': {'rua': 'Rua Treze', 'bairro': 'Salgado', 'numero': '372'},
    'comodos': {'suites': '2', 'banheiros': '1', 'quartos': '2'},
    'avaliacao': {'estrelas': '5', 'comentarios': '4'}
  },
};

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                  vertical: MediaQuery.of(context).size.height * 0.05),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => context.push('/pesquisar'),
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
                            Image.asset(
                              'assets/icons/lupa.png',
                              width: 50,
                              color: CustomColors.customWhite,
                            ),
                            const Text(
                              'Pesquisar',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.customWhite),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () => context.push('/financeiro'),
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
                            Image.asset(
                              'assets/icons/cifrao.png',
                              width: 50,
                              color: CustomColors.customWhite,
                            ),
                            const Text(
                              'Financeiro',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.customWhite),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () => context.push('/imoveis'),
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
                            Image.asset(
                              'assets/icons/home.png',
                              width: 50,
                              color: CustomColors.customWhite,
                            ),
                            const Text(
                              'Imóveis',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.customWhite),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () => context.push('/favoritos'),
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
                            Image.asset(
                              'assets/icons/heart.png',
                              width: 50,
                              color: CustomColors.customWhite,
                            ),
                            const Text(
                              'Favoritos',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.customWhite),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Para você',
                    style: TextStyle(
                        color: CustomColors.customPurpleBioffa,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
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
                          Image.asset(
                            'assets/icons/casa6.jpg',
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
                    height: MediaQuery.of(context).size.height * 0.01,
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
                    height: MediaQuery.of(context).size.height * 0.01,
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
                          Image.asset(
                            'assets/icons/casa5.jpg',
                            height: MediaQuery.of(context).size.height * 0.09,
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
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
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
