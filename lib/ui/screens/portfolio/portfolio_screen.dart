import 'package:bloxity/ui/layouts/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../layouts/base_scaffold_body.dart';
import '../../styles/style.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/inputs/general_input.dart';
import 'view_model/market_view_model.dart';
import 'widgets/portfolio_view_widget.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PortfolioViewModel>.reactive(
      viewModelBuilder: () => PortfolioViewModel(),
      builder: (context, model, _) {
        return BaseScaffold(
          isAppBar: const CustomAppBar(),
          body: BaseScaffoldBody(
            builder: (context, scrollController) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 36),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: homepageCardDeco,
                  padding: const EdgeInsets.only(
                    left: 48,
                    top: 36,
                    bottom: 36,
                    // right: 79
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Balance',
                        style: kHeadline3TextStyle.copyWith(
                          color: AppColor.headlineTextPrimary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'N8,692,630.22',
                        style: kHeadline1TextStyle.copyWith(
                          color: AppColor.headlineTextPrimary,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const GeneralInput(
                  suffixIcon: Icons.tune_rounded,
                ),
                const SizedBox(height: 48),
                const PortfolioViewWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
