import 'package:bloxity/ui/layouts/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/res/images.dart';
import '../../layouts/base_scaffold_body.dart';
import '../../styles/style.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/inputs/general_input.dart';
import 'view_model/market_view_model.dart';
import 'widgets/coin_view_widget.dart';
import 'widgets/explore_bloxity_widget.dart';
import 'widgets/general_homepage_header.dart';
import 'widgets/top_mover_card_widget.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
      viewModelBuilder: () => MarketViewModel(),
      builder: (context, model, _) {
        return BaseScaffold(
          isAppBar: const CustomAppBar(),
          body: BaseScaffoldBody(
            builder: (context, scrollController) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Text(
                  'Welcome Oladimeji!',
                  style: kHeadline2TextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColor.textPrimary,
                  ),
                ),
                const SizedBox(height: 24),
                Image.asset(AppImages.homepageCard),
                const SizedBox(height: 24),
                const GeneralInput(),
                const GeneralHomepageHeader(
                  label: 'Watchlists',
                  marginBottom: 36,
                  child: CoinViewWidget(),
                ),
                const GeneralHomepageHeader(
                  label: 'Top Movers',
                  child: TopMoversCardWidget(),
                ),
                const GeneralHomepageHeader(
                  label: 'Explore Bloxity',
                  marginBottom: 48,
                  child: ExploreBloxity(),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }
}
