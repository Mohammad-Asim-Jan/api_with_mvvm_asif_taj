import 'package:provider/provider.dart';

import 'view_model/auth_view_model.dart';
import 'view_model/user_view_model.dart';

class AppProviders {
  static List<ChangeNotifierProvider> providersList = [
    ChangeNotifierProvider<UserViewModel>(
        create: (_) => UserViewModel(), lazy: true),
    ChangeNotifierProvider<AuthViewModel>(
        create: (_) => AuthViewModel(), lazy: true),
  ];
}
