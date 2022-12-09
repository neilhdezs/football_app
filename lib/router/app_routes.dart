import 'package:flutter/material.dart';
import 'package:football_app/screens/screens.dart';


import '../models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    //MenuOption(route: 'home', icon: Icons.home_max_sharp, name: 'Home Screen', screen: LoginScreen(notifyNotFound: false,)),
    //MenuOption(route: 'dashboard', name: 'dashboard', screen: DashboardScreen(), icon: Icons.dashboard),
    MenuOption(route: 'home', name: 'home', screen: const HomeScreen(), icon: Icons.dashboard),
    //MenuOption(route: 'detailScreen', name: 'DetailScreen', screen: DetailScreen(), icon: Icons.dashboard),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // En vez de crearlo a pelo recorremos la lista con la información y creamos el mapa

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  // static Route<dynamic> onGenerateRoute(RouteSettings setting) {
  //   return MaterialPageRoute(builder: (context) => LoginScreen());
  // }
}
