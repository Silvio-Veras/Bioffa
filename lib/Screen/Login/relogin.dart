import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Relogin extends StatefulWidget {
  const Relogin({super.key});

  @override
  State<Relogin> createState() => _ReloginState();
}

class _ReloginState extends State<Relogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.08,
                vertical: MediaQuery.of(context).size.height * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* Logo(), */
                    Text(
                      'Bioffa',
                      style: TextStyle(fontSize: 80),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration:
                      const BoxDecoration(color: CustomColors.customWhite),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      const Text('Olá, Silvio\n\n',
                          style: TextStyle(fontSize: 30)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.push('/home');
                              },
                              style: buttonSenhaBiometria(context),
                              child: const Text(
                                "Biometria",
                                style: loginEntraLogin,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.push('/home');
                              },
                              style: buttonSenhaBiometria(context),
                              child: const Text(
                                "Senha",
                                style: loginEntraLogin,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical:
                                MediaQuery.of(context).size.height * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColors.customBlack,
                                surfaceTintColor: CustomColors.customBlack,
                              ),
                              onPressed: () {
                                context.push('/register');
                              },
                              child: const Text(
                                "Esqueceu a senha?",
                                style:
                                    TextStyle(color: CustomColors.customWhite),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColors.customBlack,
                                surfaceTintColor: CustomColors.customBlack,
                              ),
                              onPressed: () {
                                context.push('/register');
                              },
                              child: const Text(
                                "Sair da conta",
                                style:
                                    TextStyle(color: CustomColors.customWhite),
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
      ),
    ));
  }
}
