import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List<String> list = <String>['Casado', 'Solteiro'];
  List<String> list2 = <String>['Homem', 'Mulher'];
  String dropdownValue = 'Casado';
  String dropdownValueGenero = 'Homem';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                            color: CustomColors.customGray,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icons/person.png',
                        width: 35,
                        color: CustomColors.customGray,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        child: const Text(
                          'Perfil',
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
                    'Nome completo:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: 'Silvio Roberto Soares Véras Filho',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'CPF:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '123.123.123-12',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Text(
                    'Email:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '202302370357@unifavip.com',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Telefone:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '(81) 12345.1234',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Data de nascimento:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '31/05/2000',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Estado civil:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.customGrayText),
                        borderRadius: BorderRadius.circular(40)),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      underline: const SizedBox(),
                      style: const TextStyle(
                        color: CustomColors.customGrayText,
                        fontSize: 20,
                      ),
                      icon: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.5),
                        child: const Icon(Icons.arrow_downward),
                      ),
                      iconSize: 24,
                      elevation: 16,
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Gênero: ',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.customGrayText),
                        borderRadius: BorderRadius.circular(40)),
                    child: DropdownButton<String>(
                      value: dropdownValueGenero,
                      underline: const SizedBox(),
                      style: const TextStyle(
                        color: CustomColors.customGrayText,
                        fontSize: 20,
                      ),
                      icon: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.5),
                        child: const Icon(Icons.arrow_downward),
                      ),
                      iconSize: 24,
                      elevation: 16,
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items:
                          list2.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const Text(
                    'CEP:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '55010-350',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Cidade:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: 'Caruaru',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Bairro:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: 'Divinópolis',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Logradouro:',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: 'Rua Bahia',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Número: ',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '1',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Complemento: ',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: 'A',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Nova senha: ',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '*********',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Repetir a Senha: ',
                    style: TextStyle(
                        fontSize: 20, color: CustomColors.customPurpleBioffa),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    style: const TextStyle(color: CustomColors.customGrayText),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: CustomColors.customWhite,
                      hintStyle: TextStyle(color: CustomColors.customGrayText),
                      border: OutlineInputBorder(),
                      hintText: '*********',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Center(
                              child: Text('Dados alterados com sucesso')),
                        ));
                      },
                      style: buttonEntrarLogin(context),
                      child: const Text(
                        "Salvar",
                        style: loginEntraLogin,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
