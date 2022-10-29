import 'package:flutter/material.dart';

import '../../layouts/base_scaffold.dart';
import '../../widgets/custom_app_bar.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      isAppBar: const CustomAppBar(),
      body: Container(),
    );
  }
}
