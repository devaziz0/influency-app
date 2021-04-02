import 'package:flutter/material.dart';
import 'package:my_app/screens/campaign-application.dart';
import 'package:my_app/screens/campaign-details.dart';
import 'package:my_app/screens/campaigns.dart';
import 'package:my_app/screens/influencer-feed.dart';

// screens
import 'package:my_app/screens/onboarding.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/profile.dart';
import 'package:my_app/screens/settings.dart';
import 'package:my_app/screens/register.dart';
import 'package:my_app/screens/notifications.dart';
import 'package:my_app/screens/articles.dart';
import 'package:my_app/screens/elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Argon PRO Flutter',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/campaigns",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/influencer-feed": (BuildContext context) => new InfluencerFeed(),
          "/campaign-details": (BuildContext context) => new CampaignScreen(),
          "/campaigns": (BuildContext context) => new CampaignsScreen(),
          "/campaign-application": (BuildContext context) =>
              new CampaignApplicationScreen(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/account": (BuildContext context) => new Register(),
          "/notifications": (BuildContext context) => new Notifications(),
        });
  }
}
