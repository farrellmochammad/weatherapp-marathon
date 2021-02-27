import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weatherappmarathon/page/detailpage.dart' as detail;

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/splash',
  routes: {
    '/' : (context) => Home(),
    '/splash' : (context) => SplashScreen(),
    '/detail' : (context) => detail.Detail(),
  },
));


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/images/splash_screen.png', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState  createState() => _HomeState ();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cloudy-scene.png"),
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF827E7E),
                        Color(0xFF969393),
                        Color(0xFFA7A5A5),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              prefixIcon: Image.asset("assets/images/location.png", width: 5, height: 5),
                              contentPadding: EdgeInsets.all(15),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Bojongsoang, Bandung",
                              hintStyle: TextStyle(color: Colors.grey )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container (
                            padding: EdgeInsets.only(top: 30),
                            child: Image.asset(
                              'assets/images/lowIcon.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Container (
                              child: Text(
                                '21\u00B0',
                                style: TextStyle(fontSize: 25),
                              )
                          ),

                        ],

                      ),
                      Column(
                        children: <Widget>[
                          Container (
                            child:
                            Container(
                                child: Text('Sunday, 27 Sept', style: TextStyle(color: Colors.grey, fontSize: 20),)
                            ),

                          ),
                          Container (
                              child: Text(
                                '27\u00B0',
                                style: TextStyle(fontSize: 35),
                              )
                          ),
                          Container (
                              child: Text(
                                'Real feel 23\u00B0',
                                style: TextStyle(fontSize: 15, color: Colors.grey),
                              )
                          ),
                        ],

                      ),
                      Column(
                        children: <Widget>[
                          Container (
                            padding: EdgeInsets.only(top: 30),
                            child: Image.asset(
                              'assets/images/highIcon.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Container (
                              child: Text(
                                '23\u00B0',
                                style: TextStyle(fontSize: 25),
                              )

                          ),

                        ],

                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Image.asset(
                              'assets/images/humidity.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Container(
                            child: Text("Humidity", style: TextStyle(color: Colors.grey),),
                          ),
                          Container(
                            child: Text("73%", style: TextStyle(color: Colors.grey)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Image.asset(
                              'assets/images/uv-index.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Container(
                            child: Text("UV Index", style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            child: Text("Low", style: TextStyle(color: Colors.grey)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Image.asset(
                              'assets/images/wind-speed.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Container(
                            child: Text("Wind Speed", style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            child: Text("12km/h", style: TextStyle(color: Colors.grey)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(top:50, right: 10),
                        child: InkWell(
                          child: Text(
                              "See next 7 days",
                              style: TextStyle(color: Colors.grey),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/detail');
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:50, right: 25),
                        child: InkWell(
                          child: Image.asset(
                            'assets/images/right-icon.png',
                            height: 15,
                            width: 15,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/detail');
                            },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    padding: EdgeInsets.only(left:15, right: 15),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Card (
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                              ),
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                                          child: Text("23\u00B0", style: TextStyle(fontSize: 15),)
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset("assets/images/cloudy-rain.png", width: 40, height: 40),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.all(5),
                                          child: Text("Now", style: TextStyle(fontSize: 15),)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Card (
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                              ),
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                                          child: Text("28\u00B0", style: TextStyle(fontSize: 15),)
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset("assets/images/sunny-ic.png", width: 40, height: 40),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.all(5),
                                          child: Text("15.00", style: TextStyle(fontSize: 15, color: Colors.grey),)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Card (
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                              ),
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                                          child: Text("23\u00B0", style: TextStyle(fontSize: 15,),)
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset("assets/images/cloudy-rain.png", width: 40, height: 40),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.all(5),
                                          child: Text("16.00", style: TextStyle(fontSize: 15, color: Colors.grey),)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Card (
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                              ),
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                                          child: Text("25\u00B0", style: TextStyle(fontSize: 15),)
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset("assets/images/cloudy-rain.png", width: 40, height: 40),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container (
                                          padding: EdgeInsets.all(5),
                                          child: Text("17.00", style: TextStyle(fontSize: 15, color: Colors.grey),)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }


}

class MyClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}

class Detail extends StatefulWidget {
  @override
  _DetailState  createState() => _DetailState ();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Text("Hello from other page"),
    );
  }
}