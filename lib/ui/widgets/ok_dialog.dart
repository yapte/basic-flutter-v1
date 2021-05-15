import 'package:basic/constants/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class OkDialog extends StatelessWidget {
  final String text;
  final String title;
  final String btnText;
  final Function onClose;

  OkDialog({@required this.text, this.title, this.btnText, @required this.onClose})
      : assert(text != null && onClose != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title) : null,
      content: Text(text),
      actions: <Widget>[
        TextButton(
          child: Text(btnText ?? LocaleKeys.ok.tr()),
          onPressed: onClose,
        ),
      ],
    );
  }
}
