import 'package:flutter/material.dart';
import 'package:nattawut032_miniproject/src/configs/app_route.dart';
import 'package:nattawut032_miniproject/src/configs/app_setting.dart';
import 'package:nattawut032_miniproject/src/pages/home/home_page.dart';




import 'package:shared_preferences/shared_preferences.dart';

import 'pages/login/login_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute().getAll,
      theme: ThemeData(primaryColor: Colors.indigoAccent),
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Container(color: Colors.white,);
          }
          final token = snapshot.data.getString(AppSetting.userNameSetting ?? '');
          if(token != null){
            return HomePage();
          }else {
            return LoginPage();
          }
        },
      ),
    );
  }
} //end class