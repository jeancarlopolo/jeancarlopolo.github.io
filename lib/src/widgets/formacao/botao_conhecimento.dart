import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotaoConhecimento extends StatelessWidget {
  const BotaoConhecimento(
      {super.key,
      required this.svg,
      this.height,
      this.width});
  final SvgPicture svg;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(5),
      child: svg,
    );
  }
}
