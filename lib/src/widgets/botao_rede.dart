import 'package:flutter/material.dart';

class BotaoRede extends StatelessWidget {
  const BotaoRede({super.key, required this.icone, this.height, this.width});
  final Widget icone;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.75),
          borderRadius: BorderRadius.circular(8)),
      child: icone,
    );
  }
}
