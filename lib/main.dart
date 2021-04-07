import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_app/reducers/reducers.dart';
import 'package:my_app/screens/influencer/campaign-application.dart';
import 'package:my_app/screens/influencer/campaign-details.dart';
import 'package:my_app/screens/influencer/campaigns.dart';
import 'package:my_app/screens/influencer/influencer-feed.dart';

// screens
import 'package:my_app/screens/onboarding.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/profile.dart';
import 'package:my_app/screens/settings.dart';
import 'package:my_app/screens/register.dart';
import 'package:my_app/screens/notifications.dart';
import 'package:my_app/screens/articles.dart';
import 'package:my_app/screens/elements.dart';
import 'package:my_app/screens/influencer/submission.dart';
import 'package:my_app/store/app-state.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Store<AppState> store =
      Store(appStateReducers, initialState: AppState.newAppState());

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Argon PRO Flutter',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/influencer-feed",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/application": (BuildContext context) => new SubmissionScreen(),
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
        },
      ),
    );
  }
}
