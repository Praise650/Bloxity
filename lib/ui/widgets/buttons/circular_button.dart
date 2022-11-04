import 'package:bloxity/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Function()? onPressed;

  const CircularButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: AppColor.secondaryIconBtnBg,
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Container(
            padding: const EdgeInsets.all(9),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFFBFAFC)),
            child: const Icon(
              Icons.add,
              size: 24,
              color: AppColor.secondaryIconBtnBg,
            ),
          ),
        ),
      ),
    );
  }
}
