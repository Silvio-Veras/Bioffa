import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    // tem foto ValueNotifier<String>#d24b5()

                    ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: SizedBox(
                            width: 120,
                            height: 120,
                            // child:
                            child: /* () {
                              if (userImage.value!.isNotEmpty) {
                                return ValueListenableBuilder(
                                    valueListenable: userImage,
                                    builder: (context, value, child) {
                                      return Image.network(
                                        userImage.value!,
                                        fit: BoxFit.fitHeight,
                                      );
                                    });
                              } else {
                                return Image.asset(
                                  'assets/images/default-user.png',
                                  fit: BoxFit.fitHeight,
                                );
                              }
                            }() */
                                Container(
                              color: CustomColors.customBlack,
                              height: 20,
                            ))),
                    const Text(
                      'Mudar foto',
                      style: boldTextLogin,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Silvio',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '\n(Nome social)',
                                  style: boldTextLogin,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SvgPicture.asset('assets/icons/Home.svg', width: 25),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            buildHeader(context),
            // buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Wrap(
    runSpacing: 8,
    children: [
      /* const CustomDivider(), */
      ListTile(
        leading: SizedBox(
          width: 24, // Defina o tamanho desejado para o ícone
          child: SvgPicture.asset('assets/icons/home.svg'),
        ),
        title: const Text('Página Inicial'),
        onTap: () => context.push('/home'),
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/home.svg', height: 25),
        title: const Text('Adapta Card'),
        onTap: () => {context.push('/adapta_card')},
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/home.svg', height: 25),
        title: const Text('Adapta Wallet'),
        onTap: () async {},
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/home.svg', height: 25),
        title: const Text('Meus dados'),
        onTap: () => context.push('/meus_dados'),
      ),
      ListTile(
        leading: SvgPicture.asset(
          'assets/icons/home.svg',
          height: 25,
        ),
        title: const Text('Suporte'),
        onTap: () => context.push('/suporte'),
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/home.svg', height: 25),
        title: const Text('Sair da conta'),
        onTap: () async {},
      ),
    ],
  );
}
