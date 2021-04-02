import 'package:flutter/material.dart';
import 'package:my_app/constants/Theme.dart';
import 'package:my_app/widgets/navbar.dart';

class SubmissionScreen extends StatelessWidget {
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
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 8),
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
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
                              'Modify submission',
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
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Campaign details',
                      style: TextStyle(
                        color: ArgonColors.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    Text(
                      'Advertise my shampoo products LLorem ipsum dolor sit amet, consectetur adipiscing elit.\n Maecenas in nunc id augue consectetur ultrices sit amet nec sapien. ',
                      // overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    Text(
                      'Convince the customer',
                      style: TextStyle(
                        color: ArgonColors.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    Text(
                        '''LLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in nunc id augue consectetur ultrices sit amet nec sapien. Vestibulum ac turpis eget risus convallis molestie. In nec tincidunt orci. 

Phasellus vehicula diam a metus tempor, ut pretium ligula consequat. Vestibulum et consequat risus. Integer feugiat odio ac odio iaculis, vitae hendrerit purus dictum. Vestibulum semper mollis lacus sed eleifend. Cras mi nulla, finibus eget hendrerit sed, feugiat dapibus justo. Aenean ultricies auctor consectetur..'''),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    Text(
                      'Propose a budget',
                      style: TextStyle(
                        color: ArgonColors.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    Text('40000 da'),
                    Padding(
                      padding: EdgeInsets.all(24),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
