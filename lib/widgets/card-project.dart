import 'package:flutter/material.dart';
import 'package:my_app/constants/Theme.dart';

class CardProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(blurRadius: 32, color: Colors.grey[200]),
          ]),
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
          Padding(padding: EdgeInsets.all(8)),
          Row(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80',
                    fit: BoxFit.contain,
                    height: 90,
                  ),
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: Color.fromRGBO(0, 0, 0, 0.1)),
                ]),
              ),
              Padding(padding: EdgeInsets.all(16)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '40000 da',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Budget',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: ArgonColors.header),
                      ),
                      Padding(padding: EdgeInsets.all(6)),
                      Text(
                        'Story',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Type',
                        style: TextStyle(color: ArgonColors.header),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(18)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 day',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                      ),
                      Text(
                        'Duration',
                        style: TextStyle(color: ArgonColors.header),
                      ),
                      Padding(padding: EdgeInsets.all(6)),
                      Text(
                        '5k-10k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                      ),
                      Text(
                        'Reach',
                        style: TextStyle(color: ArgonColors.header),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(8)),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras suscipit ante quis mollis bibendum. Donec lacinia ligula non lorem sagittis lacinia.',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: ArgonColors.text,
            ),
          ),
          Padding(padding: EdgeInsets.all(8)),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                decoration: BoxDecoration(
                    color: ArgonColors.header,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Fashion',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.all(4)),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                decoration: BoxDecoration(
                    color: ArgonColors.header,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Makeup',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(8)),
        ],
      ),
    );
  }
}
