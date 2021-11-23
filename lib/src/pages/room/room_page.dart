import 'package:flutter/material.dart';
import 'package:nattawut032_miniproject/src/configs/app_route.dart';
import 'package:nattawut032_miniproject/src/services/network.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  Future<RoomPage> _upcomingMovieModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Colors.teal,
          title: Text('ประเภทห้องเช่า')
        ),
      ),


      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/black12.jpg'),
              fit: BoxFit.cover,
              )
            ),

          ),
          Column(
            children: <Widget>[
              SizedBox(height: 50),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/home01.png'),
              ),
              Text(
                'ประเภทห้องเช่า',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Pacifico', color: Colors.teal),
              ),
              // Text(
              //   'STUDENT',
              //   style: TextStyle(
              //       fontSize: 30,
              //       fontFamily: 'Source Sans Pro',
              //       color: Colors.redAccent),
              // ),
              SizedBox(
                width: 200,
                height: 30,
                child: Divider(
                  color: Colors.black26,
                  thickness: 5,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoute.condoRout);
                },
                child: Container(

                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  color: Colors.teal.shade400,
                  child: Row(
                    children: <Widget>[

                      Icon(
                        Icons.waterfall_chart,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'คอนโดมิเนี่ยน',
                        style: TextStyle(
                              color: Colors.white),


                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //Navigator.pushNamed(context, AppRoute.homeRoute);
                },
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoute.apmRout);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    padding: EdgeInsets.all(10),
                    color: Colors.teal.shade400,
                    child: Row(
                      children: <Widget>[

                        Icon(
                          Icons.water_damage,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'อพาร์ทเมนท์',
                          style: TextStyle(
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              //   padding: EdgeInsets.all(10),
              //   color: Colors.black26,
              //   child: Row(
              //     children: <Widget>[
              //       Icon(
              //         Icons.account_balance,
              //         color: Colors.black54,
              //       ),
              //       SizedBox(width: 5),
              //       Text(
              //         'แมนชั่น',
              //         style: TextStyle(
              //             color: Colors.white),
              //       ),
              //     ],
              //   ),
              // ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoute.dmRout);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  color: Colors.teal.shade400,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.home_work,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'หอพัก',
                        style: TextStyle(
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}

