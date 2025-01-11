import 'package:api_with_mvvm_asif_taj/app_providers.dart';
import 'package:api_with_mvvm_asif_taj/utility/routes/app_routes_names.dart';
import 'package:api_with_mvvm_asif_taj/utility/routes/routes.dart';
import 'package:api_with_mvvm_asif_taj/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providersList,
      child: MaterialApp(
        initialRoute: AppRoutesNames.login,
        onGenerateRoute: Routes.generateRoutes,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginView(),
      ),
    );
  }
}
