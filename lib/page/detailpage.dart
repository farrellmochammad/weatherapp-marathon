import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState  createState() => _DetailState ();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     backgroundColor: Color(0xFFC0C3B9),
     body: ListView(
       children: <Widget>[
         Column(
           children: <Widget>[
             ClipPath(
               clipper: MyClipper(),
               child: Container(
                 padding: EdgeInsets.all(40.0),
                 height: 70,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Colors.white,
                       Colors.white,
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),
         Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          child: Image.asset("assets/images/back-icon.png"),
                          width: 50,
                          height: 50,
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Image.asset("assets/images/location.png"),
                            width: 50,
                            height: 50,
                          ),
                          Container(
                            child: Text('Bojongsoang, Bandung'),
                          ),
                        ],
                      )
                    ],
                  ),

                ],
              )
            ],
         ),
         Column(
           children: <Widget>[
             Card(
               margin: EdgeInsets.only(left: 15,right: 15, top: 35),
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15.0)
               ),
               color: Colors.white,
               child: Column (
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Row (
                     children: <Widget>[
                       Column(
                         children: <Widget>[
                           Row (
                             children: <Widget>[
                               Container(
                                 child: Image.asset("assets/images/sun-icon.png"),
                                 width: 50,
                                 height: 50,
                               ),
                               Container(
                                 child: Text('Tomorrow', style: TextStyle(color: Color(0xFF616161)),),
                               )
                             ],
                           )
                         ],
                       ),
                       Spacer(),
                       Column(
                         children: <Widget>[
                           Row (
                             children: <Widget>[
                               Container(
                                 child: Image.asset("assets/images/lowIcon.png"),
                                 width: 30,
                                 height: 30,
                               ),
                               Container(
                                 child: Text('30\u00B0', style: TextStyle(color: Color(0xFF616161)),),
                               )
                             ],
                           )
                         ],
                       ),
                       Column(
                         children: <Widget>[
                           Row (
                             children: <Widget>[
                               Container(
                                 child: Image.asset("assets/images/highIcon.png"),
                                 width: 30,
                                 height: 30,
                               ),
                               Container(
                                 padding: EdgeInsets.only(right: 20),
                                 child: Text('32\u00B0', style: TextStyle(color: Color(0xFF616161))),
                               )
                             ],
                           )
                         ],
                       )
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
                                  child: Image.asset(
                                    'assets/images/humidity.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                  child: Text("Humidity", style: TextStyle(color: Color(0xFF616161)),),
                                ),
                                Container(
                                  child: Text("73%", style: TextStyle(color: Color(0xFF616161))),
                                  padding: EdgeInsets.only(bottom: 15),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'assets/images/uv-index.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                  child: Text("UV Index", style: TextStyle(color: Color(0xFF616161))),
                                ),
                                Container(
                                  child: Text("Low", style: TextStyle(color: Color(0xFF616161))),
                                  padding: EdgeInsets.only(bottom: 15),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'assets/images/wind-speed.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                  child: Text("Wind Speed", style: TextStyle(color: Color(0xFF616161))),
                                ),
                                Container(
                                  child: Text("12km/h", style: TextStyle(color: Color(0xFF616161))),
                                  padding: EdgeInsets.only(bottom: 15),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                 ],
               )
               ,
             )
           ],
         ),
         Column(
            children: <Widget>[
              Row (
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Container(
                     width: 100,
                     padding: EdgeInsets.only(left: 20,top: 25),
                     child: Text('Mon, 28 Sep', style: TextStyle(color: Color(0xFF616161)),),
                   ),
                   Spacer(),
                   Container(
                     padding: EdgeInsets.only(top: 25),
                     child: Image.asset("assets/images/cloudy-rain.png", width: 25, height: 25,)
                   ),
                   Spacer(),
                   Column(
                     children: <Widget>[
                       Row (
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.only(top: 25),
                             child: Image.asset("assets/images/lowIcon.png"),
                             width: 30,
                             height: 30,
                           ),
                           Container(
                             padding: EdgeInsets.only(top: 25),
                             child: Text('18\u00B0', style: TextStyle(color: Color(0xFF616161))),
                           )
                         ],
                       )
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       Row (
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.only(top: 25),
                             child: Image.asset("assets/images/highIcon.png"),
                             width: 30,
                             height: 30,
                           ),
                           Container(
                             padding: EdgeInsets.only(right: 20, top: 25),
                             child: Text('20\u00B0', style: TextStyle(color: Color(0xFF616161))),
                           )
                         ],
                       )
                     ],
                   )
                 ],
               ),
              Divider(),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.only(left: 20,top: 25),
                    child: Text('Tue, 29 Sep', style: TextStyle(color: Color(0xFF616161)),),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Image.asset("assets/images/cloudy-ic.png", width: 25, height: 25,)
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/lowIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('20\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/highIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20, top: 25),
                            child: Text('23\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.only(left: 20,top: 25),
                    child: Text('Wed, 30 Sep', style: TextStyle(color: Color(0xFF616161)),),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Image.asset("assets/images/sunny-ic.png", width: 25, height: 25,)
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/lowIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('26\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/highIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20, top: 25),
                            child: Text('27\u00B0' , style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.only(left: 20,top: 25),
                    child: Text('Thu, 1 Oct', style: TextStyle(color: Color(0xFF616161)),),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Image.asset("assets/images/cloudy-rain.png", width: 25, height: 25,)
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/lowIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('23\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/highIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20, top: 25),
                            child: Text('24\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.only(left: 20,top: 25),
                    child: Text('Fri, 2 Oct', style: TextStyle(color: Color(0xFF616161)),),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Image.asset("assets/images/cloudy-rain.png", width: 25, height: 25,)
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/lowIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('20\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/highIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20, top: 25),
                            child: Text('22\u00B0' , style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.only(left: 20,top: 25),
                    child: Text('Sat, 3 Oct', style: TextStyle(color: Color(0xFF616161)),),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Image.asset("assets/images/cloudy-rain.png", width: 25, height: 25,)
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/lowIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('21\u00B0', style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Image.asset("assets/images/highIcon.png"),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20, top: 25),
                            child: Text('24\u00B0' , style: TextStyle(color: Color(0xFF616161))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider()

            ],
         )
       ],
     )
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