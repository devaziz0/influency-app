import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/actions/app-state-action.dart';
import 'package:my_app/constants/Theme.dart';
import 'package:my_app/store/app-state.dart';
import 'package:redux/redux.dart';

class BottomNavBar extends StatelessWidget {
  var routesList = ["/influencer-feed", "/campaigns", "/profile"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<AppState, Store<AppState>>(
        builder: (context, store) => BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), title: Text("Home")),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.solidObjectUngroup, size: 16),
                      title: Text("My Campaigns")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), title: Text("Profile")),
                ],
                currentIndex: store.state.generalState.bottomBarPosition,
                selectedItemColor: ArgonColors.primary,
                onTap: (int index) {
                  Navigator.pushNamed(context, routesList[index]);
                  store.dispatch(ChangeNavBarAction(index: index));
                }),
        converter: (store) => store);
  }
}
