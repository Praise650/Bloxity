import 'package:stacked/stacked.dart';

import '../../../../core/enums/drawer_route.dart';
import '../../../../core/models/ui/drawer_item.dart';

class NavigationDrawerViewModel extends BaseViewModel{
  NavigationDrawerViewModel();
  static final NavigationDrawerViewModel _instance = NavigationDrawerViewModel._();
  NavigationDrawerViewModel._();
  static NavigationDrawerViewModel get instance => _instance;

  int selectedIndex= 0;
  NavigationDrawerRoute currentPage =  NavigationDrawerRoute.homepage;
  NavigationDrawerRoute? formerPage;

  List<DrawerItemModel> drawerMenuList = DrawerItemModel.drawerMenuList;

  void setPage(NavigationDrawerRoute currentPage){}
  void previousPage(){
    // switch(formerPage){}
  }
  Future<void> logOut() async {
    // TODO: Log out with AuthService here.
  }
}