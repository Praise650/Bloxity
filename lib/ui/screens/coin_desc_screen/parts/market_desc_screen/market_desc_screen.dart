import 'package:flutter/material.dart';

import '../../../../layouts/base_scaffold.dart';
import '../../../../layouts/base_scaffold_body.dart';
import '../../../../styles/style.dart';
import '../../../market/view_model/market_view_model.dart';

class MarketDescScreen extends StatelessWidget {
  const MarketDescScreen({
    Key? key,
    required this.model,
    this.title,
    this.price,
  }) : super(key: key);

  final MarketViewModel model;
  final String? title;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      titleText: title,
      showBackBtn: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_rounded,
            color: AppColor.iconColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_rounded,
            color: AppColor.iconColor,
          ),
        ),
      ],
      body: BaseScaffoldBody(
        builder: (context, childScrollController) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      '${model.cryptoCoinsList[0].coinValue} Price',
                      style: kHeadline3TextStyle.copyWith(
                        color: AppColor.secondarySwatch[200],
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '$price Price',
                  style: kHeadline3TextStyle.copyWith(
                    color: AppColor.secondarySwatch[200],
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
