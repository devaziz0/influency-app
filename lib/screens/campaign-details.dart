import 'package:flutter/material.dart';
import 'package:my_app/constants/Theme.dart';
import 'package:my_app/widgets/card-project.dart';
import 'package:my_app/widgets/navbar.dart';

class CampaignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: Navbar(
        title: "Campaign details",
        backButton: true,
        noShadow: true,
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      // key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Advertise my shampoo products',
                  style: TextStyle(
                      color: ArgonColors.text,
                      fontFamily: 'OpenSans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'LLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in nunc id augue consectetur ultrices sit amet nec sapien. Vestibulum ac turpis eget risus convallis molestie. In nec tincidunt orci. \n\nPhasellus vehicula diam a metus tempor, ut pretium ligula consequat. Vestibulum et consequat risus. Integer feugiat odio ac odio iaculis, vitae hendrerit purus dictum. Vestibulum semper mollis lacus sed eleifend. Cras mi nulla, finibus eget hendrerit sed, feugiat dapibus justo. Aenean ultricies auctor consectetur..',
                  style: TextStyle(color: ArgonColors.text, fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Divider(),
              Padding(padding: EdgeInsets.all(8)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
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
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Story',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Type',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: ArgonColors.header),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 day',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Duration',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: ArgonColors.header),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5k-15k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ArgonColors.header),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Reach',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: ArgonColors.header),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Divider(),
              Padding(padding: EdgeInsets.all(8)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
                  Text(
                    'Audience target',
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
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 14),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 14),
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
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Divider(),
              Padding(padding: EdgeInsets.all(8)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
                  Text(
                    'Images',
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
              Container(
                padding: EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80',
                          fit: BoxFit.contain,
                          height: 80,
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.1)),
                      ]),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80',
                          fit: BoxFit.contain,
                          height: 80,
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.1)),
                      ]),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80',
                          fit: BoxFit.contain,
                          height: 80,
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.1)),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Divider(),
              Padding(padding: EdgeInsets.all(8)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
                  Text(
                    'About the client',
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
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                  ),
                  CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                  ),
                  Text(
                    'Sarah Jay',
                    style: TextStyle(
                      fontSize: 16,
                      color: ArgonColors.text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Row(
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
              Padding(
                padding: EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
