import 'package:bloxity/ui/layouts/base_scaffold.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      isAppBar: const CustomAppBar(),
      body: Container(),
    );
  }
}
