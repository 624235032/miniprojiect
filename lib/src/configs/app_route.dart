
import 'package:flutter/material.dart';
import 'package:nattawut032_miniproject/src/pages/apartment/apm_detail_page.dart';
import 'package:nattawut032_miniproject/src/pages/apartment/apm_page.dart';
import 'package:nattawut032_miniproject/src/pages/condo/condo_detail_page.dart';
import 'package:nattawut032_miniproject/src/pages/condo/condo_page.dart';
import 'package:nattawut032_miniproject/src/pages/dormitory/dm_detail_page.dart';
import 'package:nattawut032_miniproject/src/pages/dormitory/dm_page.dart';
import 'package:nattawut032_miniproject/src/pages/home/home_page.dart';
import 'package:nattawut032_miniproject/src/pages/info/info_page.dart';
import 'package:nattawut032_miniproject/src/pages/info/infok_page.dart';
import 'package:nattawut032_miniproject/src/pages/login/login_page.dart';
import 'package:nattawut032_miniproject/src/pages/map/google_map_page.dart';
import 'package:nattawut032_miniproject/src/pages/member/mysignup_page.dart';
import 'package:nattawut032_miniproject/src/pages/pages.dart';
import 'package:nattawut032_miniproject/src/pages/room/add_room_page.dart';
import 'package:nattawut032_miniproject/src/pages/room/room_page.dart';







class AppRoute{
  static const homeRoute = "home";
  static const infoRoute = "info";
  static const LoginRoute = "login";
  static const upcomingMovieRoute = "upcoming";
  static const MovieDetilRoute = "movie";
  static const videoRoute = "video";
  static const qrScanRoute = "qrScan";
  static const qrCreateRoute = "qrCreate";
  static const gameRoute = "game";
  static const gameManagementRoute = "gameManage";
  static const mapRoute = "Map";
  static const mysignupRout = "mysignup";
  static const roomRout = "room";
  static const condoRout = "condo";
  static const apmRout = "apm";
  static const condoDetilRout = "condos";
  static const apmDetilRout = "apms";
  static const dmRout = "dm";
  static const dmDetilRout = "dms";
  static const addRoomRout = "addroom";
  static const infokRout = "infok";


  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => HomePage(),
    infoRoute: (context) => InfoPage(),
    LoginRoute: (context) => LoginPage(),
    mapRoute: (context) => GoogleMapPage(),
    mysignupRout: (context) => MySignUpPage(),
    roomRout: (context) => RoomPage(),
    condoRout: (context) => CondoPage(),
    apmRout: (context) => ApmPage(),
    condoDetilRout: (context) => CondoDetailPage(),
    apmDetilRout: (context) => ApmDetailPage(),
    dmRout: (context) => DmPage(),
    dmDetilRout: (context) => DmDetailPage(),
    addRoomRout: (context) => RoomaddPage(),
    infokRout: (context) => InfokPage(),


  };

  get getAll => _route;
}//end class