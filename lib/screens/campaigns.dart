import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/constants/Theme.dart';
import 'package:my_app/widgets/campaign-card.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/input.dart';
import 'package:my_app/widgets/navbar.dart';

final List<String> tags = ["All", "Active", "Closed"];

class CampaignsScreen extends StatefulWidget {
  @override
  _CampaignsScreenState createState() => _CampaignsScreenState();
}

class _CampaignsScreenState extends State<CampaignsScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "My campaigns",
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
      drawer: ArgonDrawer(currentPage: "Home"),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CampaignCard(),
              CampaignCard(),
              CampaignCard(),
            ],
          ),
        ),
      ),
    );
  }
}
