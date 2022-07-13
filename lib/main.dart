import 'package:flutter/material.dart';
import 'dart:math';
import 'package:insta/widget.dart';
import 'package:insta/followers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:  InstaProfilePage(),
    );
  }
}

class InstaProfilePage extends StatefulWidget {
  @override
  _InstaProfilePageState createState() => _InstaProfilePageState();
}

class _InstaProfilePageState extends State<InstaProfilePage> {
  double get randHeight => Random().nextInt(100).toDouble();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Persistent AppBar that never scrolls
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black38,
        ),

        //title: Text(MyApp.title),
        title: Text(
          'Profile',

          style: (TextStyle(
            color: Colors.black54,
          )),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, _) {
            return [


              SliverToBoxAdapter(
                child:
                Row(
                  children:[
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage:AssetImage("images/dp.png"),
                    ),
                    const SizedBox(
                      width: 20.0,
                      height: 50.0,
                    ),
                    Text ('Name',
                      style: (TextStyle(
                        color: Colors.black54,

                      )), )
                  ],
                ),
              ),

              SliverToBoxAdapter(
                child:
                Row(
                  children:[


                    Expanded(
                      child: TextButton(
                        child: Text(
                          "120\nPosts",
                          style: TextStyle(fontSize: 15,color: Colors.black54),
                        ),
                        onPressed: (){},),
                    ),


                    Expanded(
                      child: TextButton(
                        child: Text(
                          "123\nFollowing",
                          style: TextStyle(fontSize: 15,color: Colors.black54),
                        ),
                        onPressed: (){},),
                    ),

                    Expanded(
                      child: TextButton(
                        child: Text(
                          "200\nLikes",
                          style: TextStyle(fontSize: 15,color: Colors.black54),
                        ),
                        onPressed: (){},),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(

                child:Text ('My Orders',
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                    color: Colors.black54,

                  )), ),),




              SliverToBoxAdapter(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[


                    SizedBox.fromSize(
                      size: Size(90, 46),
                      child: ClipRRect(
                        child: Material(
                          color: Colors.grey[300],
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.credit_card,color: Colors.black38,),
                                    Text("Account",
                                   style: TextStyle(fontSize: 15,color: Colors.black38),
                                 ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox.fromSize(
                      size: Size(90, 46),
                      child: ClipRRect(
                        child: Material(
                          color: Colors.grey[300],
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.airport_shuttle_sharp,color: Colors.black38,),
                                Text("Shipping",
                                  style: TextStyle(fontSize: 15,color: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox.fromSize(
                      size: Size(90, 46),
                      child: ClipRRect(
                        child: Material(
                          color: Colors.grey[300],
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.chat,color: Colors.black38,),
                                Text("Message",
                                  style: TextStyle(fontSize: 15,color: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),


                    SizedBox.fromSize(
                      size: Size(90, 46),
                      child: ClipRRect(
                        child: Material(
                          color: Colors.grey[300],
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.assignment_returned_outlined ,color: Colors.black38,),
                                Text("Refund",
                                  style: TextStyle(fontSize: 15,color: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ];
          },
          // You tab view goes here
          body: Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(child: Text('photos', style: TextStyle(color: Colors.black))),
                  Tab(child: Text('followers', style: TextStyle(color: Colors.black)))
                ],
              ),


              Expanded(
                child: TabBarView(
                  children: [

                    buildImages(),
                    buildfollowers(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
    Widget buildImages() => GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 20,
      itemBuilder: (context, index) => ImageWidget(index: index),
    );

  Widget buildfollowers() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 20,
    itemBuilder: (context, index) => FollowWidget(index: index),
  );

  }
