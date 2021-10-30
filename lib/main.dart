import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: DietPlan()));
}

class DietPlan extends StatefulWidget {
  const DietPlan({Key? key}) : super(key: key);

  @override
  _DietPlanState createState() => _DietPlanState();
}

class _DietPlanState extends State<DietPlan> {
  List Day = [
    {'Mon', 02},
    {'Mon', 02},
    {'Mon', 02},
    {'Mon', 02},
    {'Mon', 02},
    {'Mon', 02},
    {'Mon', 02},
  ];
  List Date = [
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 100,
      child: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width*0.87, MediaQuery.of(context).size.height*0.15),
              child: Container(
                width: MediaQuery.of(context).size.width*0.87,
                child: TabBar(
                  indicatorColor: Colors.indigo,
                  isScrollable: true,
                  labelColor: Colors.indigo,
                  unselectedLabelColor: Colors.indigo,
                  labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(child: Column(children: [Text('Mon'),Text('02')],) ),
                    Tab(child: Column(children: [Text('Tue'),Text('03')],) ),
                    Tab(child: Column(children: [Text('Wed'),Text('04')],) ),
                    Tab(child: Column(children: [Text('Thu'),Text('05')],) ),
                    Tab(child: Column(children: [Text('Fri'),Text('06')],) ),
                    Tab(child: Column(children: [Text('Sat'),Text('07')],) ),
                    Tab(child: Column(children: [Text('Sun'),Text('08')],) ),
                    Tab(child: Column(children: [Text('Mon'),Text('09')],) ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Container(
                        child: Column(
                          children: [
                            Text(Day[index]),
                            Text(Date[index])
                          ],
                        ),
                        width: MediaQuery.of(context).size.width*0.2,
                      );
                    },
                  itemCount: Day.length,
                ),
              ),
              Container(
                child: Text('Hello'),
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              )
            ],
          )
        ),
      ),
    );
  }
}
