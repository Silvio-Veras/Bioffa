import 'package:aplicativo_engenharia_de_software/Screen/Financeiro.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Pesquisa.dart';
import 'package:aplicativo_engenharia_de_software/Screen/favoritos.dart';
import 'package:aplicativo_engenharia_de_software/Screen/home.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Login/login.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Login/criar_conta.dart';
import 'package:aplicativo_engenharia_de_software/Screen/Login/relogin.dart';
import 'package:aplicativo_engenharia_de_software/Screen/imoveis.dart';
import 'package:aplicativo_engenharia_de_software/Screen/perfil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// GoRouter.of(context).pop(context);
// context.go('/home');

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final routes = GoRouter(
    initialLocation: '/',
    navigatorKey: navigatorKey,
    routes: <RouteBase>[
      GoRoute(path: '/home', builder: (((context, state) => const Home()))),
      GoRoute(path: '/', builder: (((context, state) => const Login()))),
      GoRoute(
          path: '/register', builder: (((context, state) => const Register()))),
      GoRoute(
          path: '/relogin', builder: (((context, state) => const Relogin()))),
      GoRoute(
          path: '/pesquisar',
          builder: (((context, state) => const Pesquisa()))),
      GoRoute(
          path: '/financeiro',
          builder: (((context, state) => const Financeiro()))),
      GoRoute(
          path: '/favoritos',
          builder: (((context, state) => const Favoritos()))),
      GoRoute(path: '/perfil', builder: (((context, state) => const Perfil()))),
      GoRoute(
          path: '/imoveis', builder: (((context, state) => const Imoveis()))),

      /*   GoRoute(
          path: '/suporte',
          pageBuilder: (((context, state) {
            return CustomTransitionPage(
                transitionDuration: const Duration(milliseconds: 350),
                key: state.pageKey,
                child: const Suporte(),
                transitionsBuilder:
                    ((context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                      position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0), end: Offset.zero)
                          .animate(animation),
                      child: child);
                }));
          }))), */
      /* GoRoute(
          path: '/calcular_frete',
          pageBuilder: (((context, state) {
            return const CustomNoTransitionPage(child: CalcularFrete());
          }))),
      GoRoute(
          path: '/home',
          pageBuilder: (((context, state) {
            return const CustomNoTransitionPage(child: Home());
          }))),
      GoRoute(
          path: '/mensagens',
          builder: (((context, state) => const Mensagens()))),
      GoRoute(
          path: '/notificacoes',
          builder: (((context, state) => const Notificacoes()))),
      // GoRoute(path: '/suporte', builder: (((context, state) => const Suporte()))),
      GoRoute(
          path: '/historico',
          builder: (((context, state) => const Historico()))),
      GoRoute(
          path: '/comprovante',
          builder: (((context, state) => const Comprovante()))),
      GoRoute(
          path: '/comprovante_extrato',
          builder: (((context, state) => const ComprovanteExtrato()))),

      GoRoute(
          path: '/declarar_conteudo',
          builder: (((context, state) => const CotacaoDeclararConteudo()))),
      GoRoute(
          path: '/recover', builder: (((context, state) => const Recover()))),
      GoRoute(
          path: '/cotacao_details',
          builder: (((context, state) => const CotacaoDetails()))),
      GoRoute(
          path: '/cotacao_resultado',
          builder: (((context, state) => const CotacaoResultado()))),
      GoRoute(
          path: '/cotacao_resultado_1',
          builder: (((context, state) => const CotacaoResultadoUm()))),
      GoRoute(
          path: '/cotacao_resultado_2',
          builder: (((context, state) => const CotacaoResultadoDois()))),
      GoRoute(
          path: '/cotacao_resultado_3',
          builder: (((context, state) => const CotacaoResultadoTres()))),
      GoRoute(
          path: '/meus_tickets',
          builder: (((context, state) => const MeusTickets()))),
      GoRoute(
          path: '/meus_enderecos',
          builder: (((context, state) => const MeusEnderecos()))),
      GoRoute(
          path: '/meus_dados',
          builder: (((context, state) => const MeusDados()))),
      GoRoute(
          path: '/recomendar',
          builder: (((context, state) => const Recomendar()))),
      GoRoute(
          path: '/recomendar_home',
          builder: (((context, state) => const RecomendarHome()))),
      GoRoute(
          path: '/recarga_details',
          builder: (((context, state) => const RecargaDetails()))),
      GoRoute(
          path: '/recarga_details_no_button',
          builder: (((context, state) => const RecargaDetailsNoButton()))),
      GoRoute(
          path: '/recargas',
          builder: (((context, state) => const RecargasList()))),

      GoRoute(
          path: '/loading_page',
          builder: (((context, state) => const LoadingPage()))),
      GoRoute(
          path: '/error_not_connected',
          builder: ((context, state) => const NotConnectedError())),
      GoRoute(
          path: '/meus_pedidos',
          builder: ((context, state) => const MeusPedidos())),
      GoRoute(
          path: '/meus_envios',
          builder: ((context, state) => const MeusEnvios())),
      GoRoute(path: '/blocked', builder: ((context, state) => const Blocked())),
      GoRoute(path: '/debug', builder: ((context, state) => const Debug())),*/
    ]);

//fade in
// GoRoute(
//     path: '/register_two',
//     pageBuilder: (((context, state) {
//       return CustomTransitionPage(
//           transitionDuration: const Duration(seconds: 2),
//           key: state.pageKey,
//           child: const RegisterTwo(),
//           transitionsBuilder:
//               ((context, animation, secondaryAnimation, child) {
//             return FadeTransition(
//                 opacity: CurveTween(curve: Curves.easeInOutCirc)
//                     .animate(animation),
//                 child: child);
//           }));
//     }))),

// esquerda
// GoRoute(
//     path: '/register_two',
//     pageBuilder: (((context, state) {
//       return CustomTransitionPage(
//           transitionDuration: const Duration(seconds: 1),
//           key: state.pageKey,
//           child: const RegisterTwo(),
//           transitionsBuilder:
//               ((context, animation, secondaryAnimation, child) {
//             return SlideTransition(
//                 position: Tween<Offset>(
//                         begin: const Offset(-1.0, 0.0), end: Offset.zero)
//                     .animate(animation),
//                 child: child);
//           }));
//     }))),
// direita
// GoRoute(
//     path: '/clube',
//     pageBuilder: (((context, state) {
//       return CustomTransitionPage(
//           transitionDuration: const Duration(seconds: 2),
//           key: state.pageKey,
//           child: const Clube(),
//           transitionsBuilder:
//               ((context, animation, secondaryAnimation, child) {
//             return SlideTransition(
//                 position: Tween<Offset>(
//                         begin: const Offset(1.0, 0.0), end: Offset.zero)
//                     .animate(animation),
//                 child: child);
//           }));
//     }))),

class CustomNoTransitionPage<T> extends CustomTransitionPage<T> {
  const CustomNoTransitionPage({
    required super.child,
    super.name,
    super.arguments,
    super.restorationId,
    super.key,
  }) : super(
          transitionsBuilder: _transitionsBuilder,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          maintainState: false,
        );

  static Widget _transitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      child;
}
