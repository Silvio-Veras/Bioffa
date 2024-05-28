import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
                child: Column(
                  children: [
                    const Text(
                      'Criar conta',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.customWhite),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Nome',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Usuário',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'CPF',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'E-mail',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Data de nascimento',
                            ),
                            keyboardType: TextInputType.datetime,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'CEP',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Cidade',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Rua',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Número',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Complemento',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: CustomColors.customBlack,
                              hintStyle:
                                  TextStyle(color: CustomColors.customWhite),
                              border: OutlineInputBorder(),
                              hintText: 'Senha',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: CustomColors.customWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(172, 116, 115, 115),
                              hintStyle:
                                  TextStyle(color: CustomColors.customBlack),
                              border: OutlineInputBorder(),
                              hintText: 'Confirmar senha',
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.push('/login'); //ainda nao tem
                            },
                            style: buttonEntrarLogin(context),
                            child: const Text(
                              "Criar conta",
                              style: loginEntraLogin,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
