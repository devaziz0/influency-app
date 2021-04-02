import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:my_app/constants/Theme.dart';
import 'package:my_app/widgets/card-project.dart';

//widgets
import 'package:my_app/widgets/navbar.dart';
import 'package:my_app/widgets/card-horizontal.dart';
import 'package:my_app/widgets/card-small.dart';
import 'package:my_app/widgets/card-square.dart';
import 'package:my_app/widgets/drawer.dart';

import 'package:my_app/screens/product.dart';

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Ice cream is made with carrageenan …",
    "image":
        "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"
  },
  "Makeup": {
    "title": "Is makeup one of your daily esse …",
    "image":
        "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80"
  },
  "Coffee": {
    "title": "Coffee is more than just a drink: It’s …",
    "image":
        "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80"
  },
  "Fashion": {
    "title": "Fashion is a popular style, especially in …",
    "image":
        "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1326&q=80"
  },
  "Argon": {
    "title": "Argon is a great free UI packag …",
    "image":
        "https://images.unsplash.com/photo-1482686115713-0fbcaced6e28?fit=crop&w=1947&q=80"
  }
};
final List<String> tags = ["Recomanded", "Fashion", "Discorver"];

class InfluencerFeed extends StatefulWidget {
  @override
  _InfluencerFeedState createState() => _InfluencerFeedState();
}

class _InfluencerFeedState extends State<InfluencerFeed> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Home",
          tags: tags,
          noShadow: true,
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.solidObjectUngroup, size: 16),
                  title: Text("My Campaigns")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Profile")),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: ArgonColors.primary,
            onTap: _onItemTapped),
        // key: _scaffoldKey,
        drawer: ArgonDrawer(currentPage: "Home"),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () =>
                      {Navigator.pushNamed(context, '/campaign-details')},
                  child: CardProject(),
                ),
                GestureDetector(
                  onTap: () =>
                      {Navigator.pushNamed(context, '/campaign-details')},
                  child: CardProject(),
                ),
                GestureDetector(
                  onTap: () =>
                      {Navigator.pushNamed(context, '/campaign-details')},
                  child: CardProject(),
                ),
              ],
            ),
          ),
        ));
  }
}
