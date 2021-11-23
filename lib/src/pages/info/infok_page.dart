import 'package:flutter/material.dart';

class InfokPage extends StatefulWidget {


  @override
  _InfokPageState createState() => _InfokPageState();
}

class _InfokPageState extends State<InfokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Kitipat Info'),
      ),

      body: Stack(
        children: [
          Container(

            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xFFF26a69a), Color(0xFFF80cbc4)],
            )),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 40),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/k9.png'),
              ),
              SizedBox(height: 20),
              Text(
                'ProFile',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Pacifico', color: Colors.white),
              ),
              // Text(
              //   'STUDENT',
              //   style: TextStyle(
              //       fontSize: 30,
              //       fontFamily: 'Source Sans Pro',
              //       color: Colors.redAccent),
              // ),
              // SizedBox(
              //   width: 200,
              //   height: 30,
              //   child: Divider(
              //     color: Colors.indigo.shade100,
              //     thickness: 5,
              //   ),
              // ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                padding: EdgeInsets.all(40),
                color: Colors.black12,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_box_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text('Name: Kitipat Polnamin',
                      style: TextStyle(
                          fontSize: 16, fontFamily: 'Pacifico', color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                padding: EdgeInsets.all(40),
                color: Colors.black12,
                child: Row(
                  children: <Widget>[

                    Icon(
                      Icons.account_balance_wallet_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text('StudentID: 624235039',
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'Pacifico', color: Colors.white
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
