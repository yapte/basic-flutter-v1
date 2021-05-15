import 'package:basic/constants/locale_keys.g.dart';
import 'package:basic/my_app.dart';
import 'package:basic/services/logger.dart';
import 'package:basic/ui/screens/home/home_screen.dart';
import 'package:basic/ui/screens/login/login_screen.dart';
import 'package:basic/ui/screens/settings/logout_dialog.dart';
import 'package:basic/ui/screens/settings/settings_screen.dart';
import 'package:basic/ui/widgets/error_dialog.dart';
import 'package:basic/ui/widgets/ok_dialog.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class _RouteNames {
  static const String home = '/';
  static const String login = '/login';
  static const String settings = '/settings';
}

class NavigatorService {
  static bool _isErrorState = false;

  static String get initialRoute => _RouteNames.home;

  static NavigatorState get _navigatorState => MyApp.navigatorState;

  static void pop([result]) => _navigatorState.pop(result);
  static void toMain() => _navigatorState.pushNamedAndRemoveUntil(_RouteNames.home, (_) => false);
  static void popUntilMain() => _navigatorState.popUntil(ModalRoute.withName(_RouteNames.home));
  static void toLogin() => _navigatorState.pushNamedAndRemoveUntil(_RouteNames.login, (_) => false);

  // TODO: Real routes
  static void toSettings() => _navigatorState.pushNamed(_RouteNames.settings);
  // static void toNewOrdersOnMap(List<Order> orders) =>
  //     _navigatorState.pushNamed(_RouteNames.newOrdersOnMap, arguments: orders);

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _RouteNames.home:
        return MaterialPageRoute(builder: (context) => HomeScreen(), settings: settings);
      case _RouteNames.login:
        return MaterialPageRoute(builder: (context) => LoginScreen(), settings: settings);
      case _RouteNames.settings:
        return MaterialPageRoute(builder: (context) => SettingsScreen(), settings: settings);
      default:
        throw 'no case for route "${settings.name}"';
    }
  }

  static Future<void> showError({String title, String errorText, Function onClose}) async {
    if (!_isErrorState) {
      _isErrorState = true;
      await showDialog(
        context: _navigatorState.context,
        builder: (context) => ErrorDialog(
          title: title,
          errorText: errorText,
          onClose: () {
            if (onClose != null) {
              onClose();
            } else {
              Navigator.of(context).pop();
              // pop();
            }
          },
        ),
      );
      _isErrorState = false;
    }
  }

  Future<void> showAlert(String text, [String btnText]) async {
    await showDialog(
      context: _navigatorState.context,
      builder: (context) => OkDialog(
        text: text,
        onClose: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Future<bool> showLogoutDialog() async {
    return await showDialog(context: _navigatorState.context, builder: (context) => LogoutDialog()) ?? false;
  }

  //
  // showAlertDialog() {}
}
