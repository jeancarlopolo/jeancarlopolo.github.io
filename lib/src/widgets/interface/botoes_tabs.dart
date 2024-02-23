import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

GButton criarGButton({required icon, required text, required context}) {
  return GButton(
    icon: icon,
    curve: Curves.easeInQuad,
    textStyle: Theme.of(context).textTheme.labelLarge,
    text: text,
    iconColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
    duration: Durations.medium4,
  );
}
