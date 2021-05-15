import 'package:flutter/material.dart';

class InProgress extends StatelessWidget {
  final double size;

  InProgress({this.size}) : assert(size == null || size > 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size ?? 100,
          height: size ?? 100,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
    );
  }
}
