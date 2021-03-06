import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:terminal_frontend/injection_container.dart';
import 'package:terminal_frontend/presentation/app_router.dart';

void main() async {
  await InjectionContainer.injectDependencies();
  runApp(WalletTerminalApp());
}

class WalletTerminalApp extends StatelessWidget {
  WalletTerminalApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FSR-Wallet-Terminal',
      scrollBehavior: AlwaysDragScrollBehavior(),
      routerDelegate: _appRouter.delegate(),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class AlwaysDragScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}