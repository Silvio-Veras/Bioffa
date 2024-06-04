import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

bool obscureText = true;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              // ignore: prefer_const_constructors
              Column(
                children: const [
                  /* Logo(), */
                  Text(
                    'Bioffa',
                    style: TextStyle(fontSize: 80),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
                child: Container(
                  /* decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ), */
                  color: CustomColors.customWhite,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Login',
                        style: boldTextLogin,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Form(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 6),
                            child: TextFormField(
                              //email
                              style: const TextStyle(
                                  color: CustomColors.customBlack),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: CustomColors.customTransparent,
                                hintStyle: const TextStyle(
                                  color: CustomColors.customGray,
                                  fontStyle: FontStyle.italic,
                                ),
                                border: const OutlineInputBorder(),
                                hintText: 'Usuário',
                                prefixIcon: IntrinsicHeight(
                                  child: SizedBox(
                                    width: 20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 12.0,
                                            bottom: 12.0,
                                            right: 12.0,
                                          ),
                                          child: Image.asset(
                                            'assets/icons/person.png',
                                            width: 25,
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
                          Padding(
                            //Password
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 6),
                            child: TextFormField(
                              style: const TextStyle(
                                  color: CustomColors.customBlack),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Senha',
                                filled: true,
                                fillColor: CustomColors.customTransparent,
                                labelStyle: const TextStyle(
                                  backgroundColor: CustomColors.customGray,
                                  color: CustomColors.customGray,
                                  fontSize: 19,
                                  fontStyle: FontStyle.italic,
                                ),
                                hintStyle: const TextStyle(
                                    color: CustomColors.customGray),
                                iconColor: CustomColors.customGray,
                                border: const OutlineInputBorder(),
                                prefixIcon: IntrinsicHeight(
                                  child: SizedBox(
                                    width: 20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 12.0,
                                            bottom: 12.0,
                                            right: 12.0,
                                          ),
                                          child: Image.asset(
                                            'assets/icons/pngegg.png',
                                            width: 25,
                                            color: CustomColors.customGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: IntrinsicHeight(
                                    child: SizedBox(
                                      width: 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
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
                                            child: SvgPicture.asset(
                                              obscureText
                                                  ? 'assets/icons/eye-open.svg'
                                                  : 'assets/icons/eye-open.svg',
                                              width: 25,
                                              colorFilter:
                                                  const ColorFilter.mode(
                                                      CustomColors.customGray,
                                                      BlendMode.srcIn),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.push('/home'); //ainda nao tem
                            },
                            style: buttonEntrarLogin(context),
                            child: const Text(
                              'Entrar',
                              style: loginEntraLogin,
                            ),
                          )
                        ],
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.customPurpleBioffa,
                          surfaceTintColor: CustomColors.customPurpleBioffa,
                        ),
                        onPressed: () {
                          context.push('/register');
                        },
                        child: const Text(
                          "Criar conta",
                          style: TextStyle(color: CustomColors.customWhite),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: const Text(
                          'Esqueceu sua senha?',
                          style: TextStyle(
                              color: CustomColors.customGray,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.50,
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'X',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: CustomColors
                                                      .customPurpleBioffa),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 55.0, right: 55.0, top: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Recuperar sua senha',
                                              style: boldTextRecoverPassword,
                                            ),
                                            const SizedBox(height: 10),
                                            const Text(
                                              'Um código para a recuperação de senha será enviado para o seu email',
                                              style: TextStyle(
                                                  color:
                                                      CustomColors.customGray,
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 18),
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: TextFormField(
                                                style: const TextStyle(
                                                    color: CustomColors
                                                        .customBlack),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: 'Email',
                                                  filled: true,
                                                  fillColor: CustomColors
                                                      .customTransparent,
                                                  labelStyle: TextStyle(
                                                    backgroundColor:
                                                        CustomColors.customGray,
                                                    color:
                                                        CustomColors.customGray,
                                                    fontSize: 19,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                  hintStyle: TextStyle(
                                                      color: CustomColors
                                                          .customGray),
                                                  iconColor:
                                                      CustomColors.customGray,
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            Center(
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.07,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        CustomColors
                                                            .customPurpleBioffa,
                                                    surfaceTintColor:
                                                        CustomColors
                                                            .customPurpleBioffa,
                                                  ),
                                                  onPressed: () {
                                                    context.pop();
                                                    showModalBottomSheet(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.50,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            child: Column(
                                                              children: [
                                                                const SizedBox(
                                                                  height: 20,
                                                                ),
                                                                const Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              20.0),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        'X',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            color:
                                                                                CustomColors.customPurpleBioffa),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          55.0,
                                                                      right:
                                                                          55.0,
                                                                      top:
                                                                          10.0),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      const Text(
                                                                        'Recuperar sua senha',
                                                                        style:
                                                                            boldTextRecoverPassword,
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              10),
                                                                      const Text(
                                                                        'Insira o código:',
                                                                        style: TextStyle(
                                                                            color:
                                                                                CustomColors.customGray,
                                                                            fontStyle: FontStyle.italic,
                                                                            fontSize: 18),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            25,
                                                                      ),
                                                                      const MyForm(),
                                                                      const SizedBox(
                                                                          height:
                                                                              25),
                                                                      Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.3,
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.07,
                                                                          child:
                                                                              ElevatedButton(
                                                                            style:
                                                                                ElevatedButton.styleFrom(
                                                                              backgroundColor: CustomColors.customPurpleBioffa,
                                                                              surfaceTintColor: CustomColors.customPurpleBioffa,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              context.pop();
                                                                              showModalBottomSheet(
                                                                                  context: context,
                                                                                  builder: (BuildContext context) {
                                                                                    return SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.50,
                                                                                      width: MediaQuery.of(context).size.width,
                                                                                      child: Column(
                                                                                        children: [
                                                                                          const SizedBox(
                                                                                            height: 20,
                                                                                          ),
                                                                                          const Padding(
                                                                                            padding: EdgeInsets.only(right: 20.0),
                                                                                            child: Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'X',
                                                                                                  style: TextStyle(fontSize: 20, color: CustomColors.customPurpleBioffa),
                                                                                                )
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(left: 55.0, right: 55.0, top: 10.0),
                                                                                            child: Column(
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                const Text(
                                                                                                  'Recuperar sua senha',
                                                                                                  style: boldTextRecoverPassword,
                                                                                                ),
                                                                                                const SizedBox(height: 10),
                                                                                                const Text(
                                                                                                  'Insira sua nova senha:',
                                                                                                  style: TextStyle(color: CustomColors.customGray, fontStyle: FontStyle.italic, fontSize: 18),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 25,
                                                                                                ),
                                                                                                SizedBox(
                                                                                                  width: MediaQuery.of(context).size.width,
                                                                                                  child: TextFormField(
                                                                                                    style: const TextStyle(color: CustomColors.customBlack),
                                                                                                    keyboardType: TextInputType.emailAddress,
                                                                                                    decoration: const InputDecoration(
                                                                                                      hintText: 'Senha',
                                                                                                      filled: true,
                                                                                                      fillColor: CustomColors.customTransparent,
                                                                                                      labelStyle: TextStyle(
                                                                                                        backgroundColor: CustomColors.customGray,
                                                                                                        color: CustomColors.customGray,
                                                                                                        fontSize: 19,
                                                                                                        fontStyle: FontStyle.italic,
                                                                                                      ),
                                                                                                      hintStyle: TextStyle(color: CustomColors.customGray),
                                                                                                      iconColor: CustomColors.customGray,
                                                                                                      border: OutlineInputBorder(),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 25,
                                                                                                ),
                                                                                                SizedBox(
                                                                                                  width: MediaQuery.of(context).size.width,
                                                                                                  child: TextFormField(
                                                                                                    style: const TextStyle(color: CustomColors.customBlack),
                                                                                                    keyboardType: TextInputType.emailAddress,
                                                                                                    decoration: const InputDecoration(
                                                                                                      hintText: 'Repetir a senha',
                                                                                                      filled: true,
                                                                                                      fillColor: CustomColors.customTransparent,
                                                                                                      labelStyle: TextStyle(
                                                                                                        backgroundColor: CustomColors.customGray,
                                                                                                        color: CustomColors.customGray,
                                                                                                        fontSize: 19,
                                                                                                        fontStyle: FontStyle.italic,
                                                                                                      ),
                                                                                                      hintStyle: TextStyle(color: CustomColors.customGray),
                                                                                                      iconColor: CustomColors.customGray,
                                                                                                      border: OutlineInputBorder(),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(height: 25),
                                                                                                Center(
                                                                                                  child: SizedBox(
                                                                                                    width: MediaQuery.of(context).size.width * 0.3,
                                                                                                    height: MediaQuery.of(context).size.height * 0.07,
                                                                                                    child: ElevatedButton(
                                                                                                      style: ElevatedButton.styleFrom(
                                                                                                        backgroundColor: CustomColors.customPurpleBioffa,
                                                                                                        surfaceTintColor: CustomColors.customPurpleBioffa,
                                                                                                      ),
                                                                                                      onPressed: () {
                                                                                                        context.pop();
                                                                                                      },
                                                                                                      child: const Text(
                                                                                                        "Enviar",
                                                                                                        style: TextStyle(color: CustomColors.customWhite),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    );
                                                                                  });
                                                                            },
                                                                            child:
                                                                                const Text(
                                                                              "Enviar",
                                                                              style: TextStyle(color: CustomColors.customWhite),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          );
                                                        });
                                                  },
                                                  child: const Text(
                                                    "Enviar",
                                                    style: TextStyle(
                                                        color: CustomColors
                                                            .customWhite),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width * 0.03,
        ),
        child: Image.asset(
          'assets/imgs/Logo.png',
          height: 80,
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );
  List<FocusNode> focusNodes = List.generate(
    4,
    (index) => FocusNode(),
  );

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        4,
        (index) => Container(
          margin: const EdgeInsets.all(8.0),
          width: 53.7,
          height: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: CustomColors.customGray)),
          child: TextFormField(
            style: const TextStyle(color: CustomColors.customBlack),
            controller: controllers[index],
            focusNode: focusNodes[index],
            maxLength: 1,
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 3) {
                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                } else {
                  // Quando o último quadrado for preenchido, o foco é retirado
                  FocusScope.of(context).unfocus();
                }
              }
            },
            decoration: const InputDecoration(
              counter: Offstage(), // Oculta o contador de caracteres
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
