import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/style.dart';
import '../widgets/app_button.dart';

show(BuildContext context) {
  return showModalBottomSheet(
    enableDrag: false,
    backgroundColor: Colors.transparent,
    elevation: 5.0,
    isDismissible: true,
    useRootNavigator: true,
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: AppColor.appSecondaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'You must login to access your assets/crypto',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            AppButton(onPressed: () {}, child: Text('Login in with BankID',textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white,
              ),))
          ],
        ),
      ),
    ),
  );
}
