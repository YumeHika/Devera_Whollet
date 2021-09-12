import 'package:flutter/material.dart';
import 'package:wallet/routing/routes.dart';
import 'package:wallet/screens/welcome.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/screens/sign_up.dart';
import 'package:wallet/screens/create_pin.dart';
import 'package:wallet/screens/create_pin_confirm.dart';
import 'package:wallet/screens/forgot_password.dart';
import 'package:wallet/screens/reset_your_password.dart';
import 'package:wallet/screens/enter_pin.dart';
import 'package:wallet/screens/create_wallet.dart';
class RouteGenerator {
  static RouteGenerator? _instance;

  RouteGenerator._();

  factory RouteGenerator() {
    _instance ??= RouteGenerator._();
    return _instance!;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.WelcomeScreen :
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case Routes.Login:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.SignUp:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.CreatePin:
        return MaterialPageRoute(builder: (_) => CreatePin());
      case Routes.CreatePinConfirm:
        return MaterialPageRoute(builder: (_) => CreatePinConfirm());
      case Routes.ForgotPassword:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case Routes.CheckYourEmail:
        return MaterialPageRoute(builder: (_) => CheckYourEmail());
      case Routes.EnterPin:
        return MaterialPageRoute(builder: (_) => EnterPin());
      case Routes.Begin:
        return MaterialPageRoute(builder: (_) => Begin());
      default:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }
}