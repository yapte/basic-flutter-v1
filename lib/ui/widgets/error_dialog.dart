import 'package:basic/constants/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ErrorDialog extends StatelessWidget {
  final String title;
  final String errorText;
  final Function onClose;

  ErrorDialog({this.title, this.errorText, @required this.onClose}) : assert(onClose != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title) : null,
      content: SingleChildScrollView(
        child: Text(errorText ?? LocaleKeys.unknown_error.tr()),
      ),
      actions: <Widget>[
        TextButton(onPressed: onClose, child: Text(LocaleKeys.ok.tr())),
      ],
    );
  }
}
