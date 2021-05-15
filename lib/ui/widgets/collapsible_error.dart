import 'package:flutter/material.dart';

class CollapsibleError extends StatefulWidget {
  final Widget child;

  CollapsibleError({this.child});

  @override
  _CollapsibleErrorState createState() => _CollapsibleErrorState();
}

class _CollapsibleErrorState extends State<CollapsibleError> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.easeOut,
      vsync: this,
      duration: Duration(milliseconds: 400),
      child: widget.child ?? SizedBox(height: 0),
    );
  }
}
