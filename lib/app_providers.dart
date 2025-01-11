import 'package:api_with_mvvm_asif_taj/view_model/auth_view_model.dart';
import 'package:api_with_mvvm_asif_taj/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class AppProviders {
  static List<ChangeNotifierProvider> providersList = [
    ChangeNotifierProvider<UserViewModel>(
        create: (_) => UserViewModel(), lazy: true),
    ChangeNotifierProvider<AuthViewModel>(
        create: (_) => AuthViewModel(), lazy: true),
  ];
}
