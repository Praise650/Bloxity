import 'package:flutter/material.dart';

import '../portfolio/view_model/market_view_model.dart';
import 'parts/market_desc_screen/market_desc_screen.dart';
import 'parts/portfolio_desc_screen/portfolio_desc_screen.dart';

class CoinDescScreen extends StatelessWidget {
  const CoinDescScreen({Key? key, this.title, this.price, this.model})
      : super(key: key);
  final String? title;
  final double? price;
  final dynamic model;

  @override
  Widget build(BuildContext context) {
    Widget getBody() {
      if (model == PortfolioViewModel()) {
        return PortfolioDescScreen(model: model);
      } else {
        return MarketDescScreen(model: model);
      }
    }

    return getBody();
  }
}
