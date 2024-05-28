import 'package:aplicativo_engenharia_de_software/Screen/Home.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Login/Login.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Login/relogin.dart';
import 'package:aplicativo_engenharia_de_software/Screen/applocale.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Login/criar_conta.dart';
import 'package:aplicativo_engenharia_de_software/custom/global__style.dart';
import 'package:aplicativo_engenharia_de_software/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    localization.init(
      mapLocales: [
        const MapLocale('pt', AppLocale.BR),
      ],
      initLanguageCode: 'pt',
    );
    localization.onTranslatedLanguage = _onTranslatedLanguage;
    super.initState();
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp.router(
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.applicationTheme(),
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
