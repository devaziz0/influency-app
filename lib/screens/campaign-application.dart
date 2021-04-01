import 'package:flutter/material.dart';
import 'package:my_app/constants/Theme.dart';
import 'package:my_app/widgets/input.dart';
import 'package:my_app/widgets/navbar.dart';

class CampaignApplicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: Navbar(
        title: "Application",
        backButton: true,
        noShadow: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 8),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(8)),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                Text(
                  'Convince the client',
                  style: TextStyle(
                    color: ArgonColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Input(
                borderColor: ArgonColors.info,
                placeholder: 'Explaing why you’re fit for this campaign...',
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                Text(
                  'Propose a budget',
                  style: TextStyle(
                    color: ArgonColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Input(
                borderColor: ArgonColors.info,
                placeholder: 'Propose a reasonable and competitive budget',
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.7,
                      color: ArgonColors.header,
                      onPressed: () => {},
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
          ],
        ),
      ),
    );
  }
}
