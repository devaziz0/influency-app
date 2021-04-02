import 'package:flutter/material.dart';
import 'package:my_app/constants/Theme.dart';

class CampaignCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 12, left: 12, right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(blurRadius: 32, color: ArgonColors.muted),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Advertise my shampoo products',
            style: TextStyle(
                color: ArgonColors.text,
                fontFamily: 'OpenSans',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Padding(padding: EdgeInsets.all(4)),
          Text(
            'Applied',
            style: TextStyle(color: ArgonColors.success),
          ),
          Padding(padding: EdgeInsets.all(6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '40000 da',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: ArgonColors.header),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Bid',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: ArgonColors.header),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(12)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5 days ago',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: ArgonColors.header),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Submission date',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: ArgonColors.header),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
