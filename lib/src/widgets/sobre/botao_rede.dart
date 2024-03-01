import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class BotaoRede extends StatelessWidget {
  const BotaoRede(
      {super.key,
      required this.icone,
      required this.url,
      this.height,
      this.width});
  final String url;
  final IconData icone;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        window.open(url, 'Rede Social');
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(5),
        child: Icon(
          icone,
          color: Theme.of(context).colorScheme.onBackground,
          size: 40,
        ),
      ),
    );
  }
}
