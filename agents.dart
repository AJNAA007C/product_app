import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productapp/modals/agentmodal.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import './pre/my_flutter_app_icons.dart' as custicon;

class AgentsPage extends StatefulWidget {
  @override
  _AgentsPageState createState() => _AgentsPageState();
}

class _AgentsPageState extends State<AgentsPage> {
  double rating = 4.5;

  List<Agent> agentlist = new List();

  @override
  void initState() {
    agentlist.add(Agent(
        companyname: "abc",
        agents: 123,
        headoffice: "efg",
        email: "eee",
        review: "yguy0",
        rating: 123,
        orn: 123,
        sale: 243,
        tent: 454));
    agentlist.add(Agent(
        companyname: "abc2",
        agents: 123,
        headoffice: "efg",
        email: "eee",
        review: "yguy0",
        rating: 123,
        orn: 123,
        sale: 243,
        tent: 454));
    agentlist.add(Agent(
        companyname: "abc3",
        agents: 123,
        headoffice: "efg",
        email: "eee",
        review: "yguy0",
        rating: 123,
        orn: 123,
        sale: 243,
        tent: 454));
    super.initState();
  }

  Widget appBarItems() {
    return Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey[200], spreadRadius: 2, offset: Offset(0, 1)),
        ]),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "SEARCH ALERT",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.sort,
                          color: Theme.of(context).primaryColor, size: 16),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "FILTER",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.list,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "LIST",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                )
              ],
            ),

            //
          ],
        ));
  }

  BottomNavigationBar getBottomBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: 2,
      showUnselectedLabels: true,
      items: [
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'Chat',
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'Place an ad',
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'Favorites',
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'Profile',
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
        )
      ],
    );
  }

  void onTabTapped(index) {
    switch (index) {
      case 0:
        print("home");
      /*Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );*/
    }
  }

  AppBar getAppBar(context) {
    return AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColorDark,
//
//          color: Theme.of(context).primaryColorDark, //modify arrow color from here..
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrawerPage()),
              );*/
            },
            icon: Icon(
              Icons.menu,
              size: 35,
            ),
          )
        ],
        title: Container(
          child: InkWell(
            splashColor: Theme.of(context).primaryColor,
            onTap: () {},
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "What are you looking for?",
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ));
  }

//  Widget getListView() {
//    return
  //
  Widget getListView(BuildContext context) {
    return ListView.builder(
        itemCount: agentlist.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5.0),
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey[500])),
            width: 1.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
//              Expanded(

                Expanded(flex: 3,
                  child: Container(
                    padding:
                    new EdgeInsets.all(10.0),
                    color: Colors.white10,
                    child: Image.asset(
                      'images/uniquep.jpg',
                      height: 80.0,
                      width: 100.0,
                      alignment: Alignment.center,

//            fit: BoxFit.cover,
                    ),

                  ),
                ),

//              ),
                Expanded(flex: 4,
                  child: Container(
                    padding:
                    new EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                              color: Colors.grey[500], width: 1.0,
                            )
                        )
                    ),


                    child: Column(
                      children: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  agentlist[index].companyname,
                                  style: TextStyle(
                                      color: Color(0xFFa07429),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),

                                RichText(
                                  text: TextSpan(
                                      text: "Agents:",
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: " 33",
                                            style: TextStyle(
                                                color: Color(0xFFa07429))),
                                      ]),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "ORN :",
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "16576",
                                            style: TextStyle(
                                                color: Color(0xFFa07429))),
                                      ]),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "Head Office :",
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Abu Dhabi ",
                                            style: TextStyle(
                                                color: Color(0xFFa07429))),
                                      ]),
                                ),
                                Row(
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Sale : ",
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "99",
                                                style: TextStyle(
                                                    color: Color(0xFFa07429))),
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "Rate:",
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "99",
                                                style: TextStyle(
                                                    color: Color(0xFFa07429))),
                                          ]),
                                    ),
                                  ],
                                ),

                                //smoothstar

                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRated: (v) {},
                                    starCount: 5,
                                    rating: rating,
                                    size: 20.0,
                                    isReadOnly: true,
                                    color: Color(0xFFa07429),
//                                      borderColor: Colors.green,
                                    spacing: 0.0),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.edit,
                                  color: Color(0xFFa07429),
                                ),

                                //
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'WRITE',
                                      style: TextStyle(
                                          color: Color(0xFFa07429),
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10),
                                    ),
                                    Text(
                                      'REVIEW',
                                      style: TextStyle(
                                          color: Color(0xFFa07429),
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10),
                                    ),
                                  ],
                                ),

                                //

//             const Icon(custicon.MyFlutterApp.mail,color: Color(0xFFa07429),)
                              const Icon(custicon.MyFlutterApp.mail_1,color: Color(0xFFa07429),),

                                Text(
                                  'EMAIL',
                                  style: TextStyle(
                                      color: Color(0xFFa07429),
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),

              ],
            ),
          );
        }
    );
  }
//

//        ),
//      }
//        );
//

//
//        //
//      },
//    );
//  }

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            appBarItems(),
            getListView(context),
            SizedBox(
              height: 10,
            )
          ],
        ),
      )),
      bottomNavigationBar:
          getBottomBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
