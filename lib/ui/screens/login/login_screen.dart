import 'package:basic/constants/locale_keys.g.dart';
import 'package:basic/models/api/auth_request.dart';
import 'package:basic/services/navigator_service.dart';
import 'package:basic/ui/widgets/collapsible_error.dart';
import 'package:basic/ui/widgets/in_progress.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController;
  TextEditingController _passwordController;

  AuthRequest _authRequest;

  bool _usernameInvalid;
  bool _passwordInvalid;
  bool _inProgress;

  _validateAndLogin() {
    setState(() {
      _inProgress = true;
    });

    // TODO: Real request
    Future.delayed(
      Duration(seconds: 2),
      () {
        setState(() {
          _usernameInvalid = _usernameController.value.text.trim().length == 0;
          _passwordInvalid = _passwordController.value.text.trim().length == 0;
          _inProgress = false;
        });

        if (!_usernameInvalid && !_passwordInvalid) {
          NavigatorService.toMain();
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _authRequest = AuthRequest(username: '', password: '');
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _usernameInvalid = false;
    _passwordInvalid = false;
    _inProgress = false;
    _usernameController.addListener(() {
      setState(() {
        _authRequest.copyWith(
          username: _usernameController.value.text,
        );
      });
    });
    _passwordController.addListener(() {
      setState(() {
        _authRequest.copyWith(
          password: _passwordController.value.text,
        );
      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 6),
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Theme.of(context).accentColor),
                ),
                child: Icon(Icons.perm_identity_rounded, size: 40, color: Theme.of(context).accentColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameController,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: LocaleKeys.login.tr(),
                  labelStyle: TextStyle(color: Colors.white),
                  errorText: _usernameInvalid ? LocaleKeys.required.tr() : null,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: LocaleKeys.password.tr(),
                  labelStyle: TextStyle(color: Colors.white),
                  errorText: _passwordInvalid ? LocaleKeys.required.tr() : null,
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                minWidth: double.infinity,
                color: Colors.white24,
                onPressed: _inProgress ? null : _validateAndLogin,
                child: !_inProgress
                    ? Text(
                        LocaleKeys.enter.tr(),
                        style: TextStyle(color: Colors.white),
                      )
                    : InProgress(size: 24),
              ),
            ),
            // TODO: on response error
            CollapsibleError(
              child: _usernameInvalid
                  ? Text(
                      LocaleKeys.unknown_error.tr(),
                      style: TextStyle(color: Theme.of(context).errorColor),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
