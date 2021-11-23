import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Nattawut Info'),
      ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/info1.jpg'),
                  fit: BoxFit.cover,
                )
            ),
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //   colors: [Color(0xFFFAAFFA9), Color(0xFFF11FFBD)],
            // )),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 40),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'ProFile',
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
                      color: Colors.lightBlue,
                    ),
                    SizedBox(width: 20),
                    Text('Name: Nattawut Bunwisoot',
                    style: TextStyle(
                      fontSize: 16, fontFamily: 'Pacifico', color: Colors.teal.shade400
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
                      color: Colors.lightBlue,
                    ),
                    SizedBox(width: 20),
                    Text('StudentID: 624235032',
                    style: TextStyle(
                      fontSize: 20, fontFamily: 'Pacifico', color: Colors.teal.shade400
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
