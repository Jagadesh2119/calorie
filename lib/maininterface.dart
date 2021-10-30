import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:gusto_king/Constants/ConstantColors.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main(){
  runApp(MaterialApp(home: HomeScreen()));
}
class HomeScreen extends StatefulWidget {
  // const HomeScreen ({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List tilecolor = [
  Color(0XFF6d63ea),
  Color(0XFFf44a6f),
  Color(0XFF8719a0),
  Color(0XFFa9cf46),
];
List maintext = [
  "Walking",
  "Workout",
  "Jogging",
  "Cycling",
];
List counttext1 = [
  "Distance in km",
  "Calorie Burnt",
  "Distance in km",
  "Distance in km",
];
List counttext2 = [
  "Distance in km",
  "Calorie Burnt",
  "Distance in km",
  "Distance in km",
];
List countvalue1 = [
  "30",
  "330",
  "30",
  "330",
];
List countvalue2 = [
  "120",
  "120",
  "120",
  "120",
];
List img = [
  "assets/images/walk.png",
  "assets/images/stretching.png",
  "assets/images/running.png",
  "assets/images/bicycle.png",
];
// List Calicon = [
//   Icon(Icons.access_alarms_rounded),
//   Icon(Icons.height),
// ];
List Cal = [
  "50 Cal",
  "35 Cal",
];
List logo = [
  'images/cocktail.png',
  'images/shop (1).png',
];
List Name = ['Wake Up Drink', 'Breakfast'];

List Foods = [
  'Lemon Cinnamon Water',
  'Plain dosai ● Sambar ● Vadai ● Panner.. m̲o̲r̲e̲',
];
List Calcolours = [Colors.green, Colors.red];
List Bgcolours = [Colors.green.shade300, Colors.deepOrangeAccent];
List Shadow = [Colors.green.shade100, Colors.deepOrange.shade100];

class _HomeScreenState extends State<HomeScreen> {
  int lines = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   brightness: Brightness.dark,
        //   backgroundColor: HexColor("#3474f8"),
        //   elevation: 0.0,
        //   toolbarHeight: 80,
        //   flexibleSpace:
        //   Container(
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       child: Column(
        //         children: [
        //           Expanded(
        //             child: Row(
        //               children: [
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("Hello,",style: TextStyle(color: blueColor),),
        //                     Text("Shanmuga Raja!",style: TextStyle(color: blueColor,fontSize: 20,fontWeight: FontWeight.bold),),
        //                   ],
        //                 ),
        //                 Spacer(),
        //                 IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: blueColor,)),
        //                 Container(
        //                   height: 30,
        //                   width: 30,
        //                   decoration: BoxDecoration(border: Border.all(color: blueColor,width: 2),
        //                     borderRadius: BorderRadius.all(Radius.circular(30)),
        //                     image: DecorationImage(
        //                         image: AssetImage("assets/images/profile.jpg"),fit: BoxFit.contain
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //   ),
        // ),
        body: Container(
          // color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              color: Color(0XFF3474f8),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   height: 80,
                  //   width: width,
                  //   decoration: BoxDecoration(color: Colors.white,
                  //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                  //           bottomRight: Radius.circular(30))
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(20.0),
                  //     child: Column(
                  //       children: [
                  //         Expanded(
                  //           child: Row(
                  //             children: [
                  //               Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Text("Hello,",style: TextStyle(color: blueColor),),
                  //                   Text("Shanmuga Raja!",style: TextStyle(color: blueColor,fontSize: 20,fontWeight: FontWeight.bold),),
                  //                 ],
                  //               ),
                  //               Spacer(),
                  //               IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: blueColor,)),
                  //               Container(
                  //                 height: 30,
                  //                 width: 30,
                  //                 decoration: BoxDecoration(border: Border.all(color: blueColor,width: 2),
                  //                   borderRadius: BorderRadius.all(Radius.circular(30)),
                  //                   image: DecorationImage(
                  //                     image: AssetImage("assets/images/profile.jpg"),fit: BoxFit.contain
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 15.0,
                          percent: 0.56,
                          center:  Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/calories.png",scale: 20,color: Colors.white,fit: BoxFit.contain,),
                                Text("1000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                Text("Cal.Burnt",style: TextStyle(color: Colors.white,fontSize: 12),),
                              ],
                            ),
                          ),
                          progressColor: Color(0XFFffaa4f),
                          backgroundColor: Color(0XFF264e9c),
                          circularStrokeCap: CircularStrokeCap.round,
                          reverse: true,

                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text("575",style: (TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),),
                            Text("Steps",style: (TextStyle(color: Colors.white)),),
                            SizedBox(height: 5,),
                            SizedBox(
                              width: 50,
                              child: Container(
                                margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                                height: 0.5,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("175",style: (TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),),
                            Text("BMI",style: (TextStyle(color:Colors.white)),),
                          ],
                        ),
                        Spacer(),
                        CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 15.0,
                          percent: 0.65,
                          center:  Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/cloche.png",scale: 20,color: Colors.white,fit: BoxFit.contain,),
                                Text("2500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                Text("Cal.Intake",style: TextStyle(color: Colors.white,fontSize: 12),),
                              ],
                            ),
                          ),
                          progressColor: Color(0XFF67db54),
                          backgroundColor: Color(0XFF264e9c),
                          circularStrokeCap: CircularStrokeCap.round,
                          reverse: true,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(color: Color(0XFF3f424a),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/boiled-egg.png",scale: 25,color: Colors.white,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("2.35g",style: TextStyle(color: Color(0XFFeaca7e),fontWeight: FontWeight.bold),),
                                      Text("Protein",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            VerticalDivider(
                              thickness: 0.5,color: Colors.white,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/images/rice.png",scale: 25,color: Colors.white,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("2.35g",style: TextStyle(color: Color(0XFFeaca7e),fontWeight: FontWeight.bold),),
                                      Text("Carbs",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            VerticalDivider(
                              thickness: 0.5,color: Colors.white,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/images/trans-fat.png",scale: 25,color: Colors.white,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("2.35g",style: TextStyle(color: Color(0XFFeaca7e),fontWeight: FontWeight.bold),),
                                      Text("Fat",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            VerticalDivider(
                              thickness: 0.5,color: Colors.white,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/images/wheat.png",scale: 25,color: Colors.white,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("2.35g",style: TextStyle(color: Color(0XFFeaca7e),fontWeight: FontWeight.bold),),
                                      Text("Fiber",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 20,right: 20),
                    child: Container(
                      height: 80,
                      child: Image.asset("assets/images/Add.jpg",),
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 20),
                                child: RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: 'Calorie',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                              fontSize: 25)),
                                      TextSpan(),
                                      TextSpan(
                                          text: 'Tracker',
                                          style: TextStyle(fontSize: 25, color: Colors.blue))
                                    ])),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.42,
                                            height: MediaQuery.of(context).size.height * 0.16,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Bgcolours[index],
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Shadow[index],
                                                     )
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Calcolours[index],
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius.circular(20),
                                                              bottomLeft: Radius.circular(20))),
                                                      height:
                                                      MediaQuery.of(context).size.height *
                                                          0.03,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.23,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                        children: [
                                                          Image.asset('images/fire.png', width: 15, color: Colors.white,),
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Text(
                                                              Cal[index],
                                                              style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 11,
                                                                  fontWeight: FontWeight.bold),
                                                              maxLines: 2,
                                                              overflow: lines==true ? TextOverflow.ellipsis : TextOverflow.fade,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width:
                                                  MediaQuery.of(context).size.width * 0.37,
                                                  height:
                                                  MediaQuery.of(context).size.height * 0.12,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Image.asset(logo[index], width: 30, color: Colors.white,),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        Name[index],
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 13,
                                                            color: Colors.white),
                                                      ),
                                                      SizedBox(
                                                        height: 4,
                                                      ),
                                                      SizedBox(
                                                        width:
                                                        MediaQuery.of(context).size.width *
                                                            0.09,
                                                        height:
                                                        MediaQuery.of(context).size.height *
                                                            0.004,
                                                        child: Container(
                                                          child: Text("-"),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius:
                                                              BorderRadius.circular(10)),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          Foods[index],
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 10,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                              child: Container(
                                                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))),
                                                child: Opacity(
                                                  opacity: 0.3,
                                                  child: Image.asset(
                                                    logo[index],
                                                    height: 88,
                                                    width: 88,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            top: 50,
                                            right: 1,
                                          ),
                                        ]
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Daily',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                        fontSize: 25)),
                                TextSpan(),
                                TextSpan(
                                    text: 'Workouts',
                                    style: TextStyle(fontSize: 25, color: Colors.blue))
                              ])),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Stack(children: [
                                          Container(
                                            height: 150,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: tilecolor[index],
                                                )
                                              ],
                                              borderRadius: BorderRadius.circular(20),
                                              color: tilecolor[index],
                                            ),
                                          ),
                                          Positioned(
                                              right: -5,
                                              top: 50,
                                              child: Opacity(
                                                opacity: 0.5,
                                                child: Image.asset(
                                                  img[index],
                                                  height: 100,
                                                  width: 100,
                                                  color: Colors.white,
                                                ),
                                              )),
                                          Positioned(
                                            left: 0,
                                            child: Padding(
                                              padding: const EdgeInsets.all(18.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(
                                                        0, 10, 8, 8),
                                                    child: Image.asset(
                                                      img[index],
                                                      height: 45,
                                                      width: 45,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  SizedBox(
                                                    width:
                                                    MediaQuery.of(context).size.width *
                                                        0.09,
                                                    height:
                                                    MediaQuery.of(context).size.height *
                                                        0.005,
                                                    child: Container(
                                                      child: Text('-'),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                          BorderRadius.circular(10)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height / 90,
                                                  ),
                                                  Text(
                                                    maintext[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 80,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(
                                                      30, 30, 0, 0),
                                                  child: Container(
                                                    width: 70,
                                                    child: Text(
                                                      counttext1[index],
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(
                                                      50, 0, 0, 25),
                                                  child: Container(
                                                    width: 70,
                                                    child: Text(
                                                      'Time in Mins.',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.fromLTRB(0, 10, 0, 8),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(
                                                        10, 15, 10, 5),
                                                    child: Container(
                                                      child: Text(
                                                        countvalue1[index],
                                                        style: TextStyle(
                                                            fontSize: 45,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(
                                                        0, 0, 10, 0),
                                                    child: Container(
                                                      child: Text(
                                                        countvalue2[index],
                                                        style: TextStyle(
                                                            fontSize: 45,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ]),
                                        // ignore: missing_return
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}