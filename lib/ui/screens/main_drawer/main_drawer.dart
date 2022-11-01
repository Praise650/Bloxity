import 'package:bloxity/app/res/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import 'view_model/main_screen_view_model.dart';
import 'widgets/drawer_item_widget.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationDrawerViewModel>.reactive(
      viewModelBuilder: () => NavigationDrawerViewModel(),
      builder: (context, model, _) => SafeArea(
        child: Drawer(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: SvgPicture.asset(
                      AppSvgs.navicon4,
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Oladimeji Adedeji',
                    style: TextStyle(fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: model.drawerMenuList
                          .map(
                            (e) => DrawerItemWidget(
                              icon: e.icon,
                              name: e.name,
                              onPressed: () {},
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget headerWidget() {
  return Row(
    children: [
      const CircleAvatar(
        radius: 27,
        backgroundImage: AssetImage('assets/images/Profilepictures/joshua.png'),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Joshua Fatoke',
              style: TextStyle(fontSize: 14, color: Colors.black)),
          SizedBox(
            height: 10,
          ),
          Text('CSC/18/0000',
              style: TextStyle(fontSize: 14, color: Colors.black))
        ],
      )
    ],
  );
}
