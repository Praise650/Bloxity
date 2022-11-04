import 'package:bloxity/ui/widgets/graph.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../layouts/base_scaffold.dart';
import '../../../../layouts/base_scaffold_body.dart';
import '../../../../styles/style.dart';
import '../../../portfolio/view_model/market_view_model.dart';
import 'view_model/portfolio_desc_screen_view_model.dart';

class PortfolioDescScreen extends StatelessWidget {
  const PortfolioDescScreen({
    Key? key,
    required this.model,
    this.title,
    this.price,
    this.rate,
  }) : super(key: key);

  final PortfolioViewModel model;
  final String? title;
  final double? price;
  final double? rate;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PortfolioDescScreenViewModel>.reactive(
      viewModelBuilder: () => PortfolioDescScreenViewModel(),
      builder: (context, model, _) {
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
          ],
          body: BaseScaffoldBody(
            builder: (context, childScrollController) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 45),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$price Price',
                      style: kHeadline3TextStyle.copyWith(
                        color: AppColor.secondarySwatch[200],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$rate Price',
                      style: kHeadline3TextStyle.copyWith(
                        color: AppColor.secondarySwatch[200],
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 45),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: List.generate(
                      model.components.length,
                      (index) => Text(
                        model.components[index],
                      ),
                    ).toList(),
                  ),
                ),
                const SizedBox(height: 12),
                GraphWidget(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
