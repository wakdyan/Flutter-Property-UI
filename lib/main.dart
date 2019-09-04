import 'package:flutter/material.dart';
import 'package:property_app/assets.dart';
import 'package:property_app/detail_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var background = Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 5,
      color: Color(0xFFF6F7FB),
    );

    var post = CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://lh3.googleusercontent.com/-CPZhzDe99QM/VzCeeRDGm7I/AAAAAAAAAXY/LHt9jIibnF8XiTBpTna6m4EYY2Xc28zyACEwYBhgL/w139-h140-p/juggernaut-vector-wallpaper.jpg'),
                        ),
                        CircleAvatar(
                          child: IconButton(
                            icon: Icon(
                              Icons.chat_bubble_outline,
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                          foregroundColor: Colors.grey,
                          backgroundColor: Color(0xFFF1F2F6),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: 'Welcome back Uran, ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            // fontWeight: FontWeight.w600,
                            // letterSpacing: .8,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'everything is progressing great. See our detail.',
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 7,
                    backgroundColor: Color(0xFFFF5F5F),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: Divider(height: 35)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Listing Media',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 25),
            child: Container(
              height: 230,
              color: Colors.transparent,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: mediaImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            image: DecorationImage(
                                image: NetworkImage(mediaImages[index]),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                mediaImageNames[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 360,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(profileImages[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      profileNames[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                            size: 18,
                                          ),
                                          Text(
                                            ratings[index],
                                            style: TextStyle(
                                                color: Colors.orangeAccent),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Resindetial, Uni/Flat',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black38)),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                residentialImage: residentialImages[index],
                                profileImage: profileImages[index],
                                profileName: profileNames[index],
                                rating: ratings[index],
                              ),
                            ),
                          ),
                          child: Container(
                            height: 280,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(residentialImages[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }, childCount: residentialImages.length),
        )
      ],
    );

    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: <Widget>[
              background,
              post,
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: Color(0xFF2cca73)),
            selectedItemColor: Colors.black,
            selectedFontSize: 12,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
            unselectedItemColor: Colors.black26,
            iconSize: 26,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 43,
                  width: 43,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2cca73),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF2cca73),
                            offset: Offset(0, .5),
                            blurRadius: 5),
                      ]),
                  child: Icon(Icons.add, color: Colors.white, size: 30),
                ),
                title: Text(
                  'Add',
                  style: TextStyle(fontSize: 0),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                title: Text('Saved'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                title: Text('More'),
              ),
            ],
          )),
    );
  }
}
