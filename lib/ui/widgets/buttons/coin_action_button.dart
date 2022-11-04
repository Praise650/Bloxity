import 'package:bloxity/ui/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoinActionButton extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Function()? onPressed;

  const CoinActionButton({
    Key? key,
    required this.padding,
    required this.text,
    this.color, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? AppColor.secondaryGraphSwatch[500],
      elevation: .5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48),
      ),
      padding: padding ?? const EdgeInsets.symmetric(vertical: 11),
      enableFeedback: true,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColor.secondaryAltBtnBg,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
