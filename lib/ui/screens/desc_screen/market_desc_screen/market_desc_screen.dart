import 'package:flutter/material.dart';

import '../../../layouts/base_scaffold.dart';
import '../../../layouts/base_scaffold_body.dart';
import '../../../styles/style.dart';
import '../../../widgets/graph.dart';
import '../../market/view_model/market_view_model.dart';

class MarketDescScreen extends StatelessWidget {
  const MarketDescScreen({
    Key? key,
    required this.model,
    this.title,
    this.price,
    this.rate,
  }) : super(key: key);

  final MarketViewModel model;
  final String? title;
  final double? price;
  final double? rate;

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title Price',
                  style: kHeadline3TextStyle.copyWith(
                    color: AppColor.primarySwatch[500],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  // '$price',
                  'N8,692,630.22',
                  style: kHeadline3TextStyle.copyWith(
                    color: AppColor.primarySwatch[500],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  // '$rate',
                  '+NGN 300,833.67 (+3.55%)',
                  style: kHeadline4TextStyle.copyWith(
                    color: const Color(0xff00DB8C),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(height: 42),
            GraphWidget(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
