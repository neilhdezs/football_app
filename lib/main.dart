import 'package:flutter/material.dart';
import 'package:football_app/router/app_routes.dart';
import 'package:football_app/screens/home_screen.dart';
import 'package:football_app/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'provider/football_provider.dart';

void main() {
  runApp(const MyApp());
}


// class AppState extends StatelessWidget {
//   const AppState({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: ( _ ) => FootballProvider(), lazy: false,)
//       ],
//       child: const MyApp(),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => HomeScreen()),
        theme: AppTheme.darkTheme);
  }
}
