import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final residentialImage, profileImage, profileName, rating;
  DetailPage(
      {this.residentialImage,
      this.profileImage,
      this.profileName,
      this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              residentialImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 2.5,
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, top: 35, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(profileImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      profileName,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                            size: 18,
                                          ),
                                          Text(rating,
                                              style: TextStyle(
                                                  color: Colors.orangeAccent))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Residential, Uni / Flat',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black38))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE4FCEC),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'For Sale',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF2cca73),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 35,
                      ),
                      Text(
                        '\$150.000.00',
                        style: TextStyle(fontSize: 22, letterSpacing: 1),
                      ),
                      Text('Residential Property In Uni / Flat',
                          style:
                              TextStyle(fontSize: 17, color: Colors.black38)),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '6',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Beds')
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Baths')
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Kithen')
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Garage')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Property Size',
                            style: TextStyle(
                                color: Colors.black38, fontSize: 16),
                          ),
                          Text(
                            '910 sq ft',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 35,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xFFE4FCEC),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.call,
                                    color: Color(0xFF2cca73),
                                  ),
                                  Text(
                                    'CALL',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF2cca73),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xFFE4FCEC),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.chat_bubble,
                                    color: Color(0xFF2cca73),
                                  ),
                                  Text(
                                    'SMS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF2cca73),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xFFE4FCEC),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.send,
                                    color: Color(0xFF2cca73),
                                  ),
                                  Text(
                                    'EMAIL',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF2cca73),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 35,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'More Information',
                              hintStyle: TextStyle(fontSize: 17),
                              suffixIcon: Icon(
                                Icons.add,
                                size: 28,
                                color: Colors.black38,
                              ),
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
