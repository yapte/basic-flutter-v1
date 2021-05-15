import 'package:basic/constants/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text('${LocaleKeys.are_you_sure.tr()}?'),
      actions: <Widget>[
        TextButton(
          child: Text(LocaleKeys.yes.tr()),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
        TextButton(
          child: Text(LocaleKeys.cancel.tr()),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
