import 'package:bloxity/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Function()? onPressed;
  final IconData? icon;
  final String? text;

  const CircularButton({Key? key, this.onPressed, this.icon, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColor.secondaryIconBtnBg,
            child: Padding(
              padding: const EdgeInsets.all(9),
              child: Container(
                padding: const EdgeInsets.all(9),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFBFAFC)),
                child: Icon(
                  icon ?? Icons.add,
                  size: 24,
                  color: AppColor.secondaryIconBtnBg,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(text??'Buy',style: const TextStyle(),)
        ],
      ),
    );
  }
}
