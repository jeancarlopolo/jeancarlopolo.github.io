import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class BotaoRede extends StatelessWidget {
  const BotaoRede(
      {super.key,
      required this.icone,
      required this.url,
      this.height,
      this.width});
  final String url;
  final String icone;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    final uri = Uri.parse(url);
    return GestureDetector(
      onTap: () async {
        if (!await launchUrl(uri)) {
          throw Exception('Could not launch $uri');
        }
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(5),
        child: SvgPicture.asset(
          icone,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
          height: 40,
        ),
      ),
    );
  }
}
