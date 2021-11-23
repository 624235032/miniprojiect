import 'package:flutter/material.dart';
import 'package:nattawut032_miniproject/src/configs/app_route.dart';

class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[
    Menu(
      title: 'โปรไฟล์ไมค์',
      icon: Icons.person,
      iconColor: Colors.indigo,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.infoRoute);
      },
    ),
    Menu(
      title: 'โปรไฟล์เก้า',
      icon: Icons.person,
      iconColor: Colors.indigo,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.infokRout);
      },
    ),
    Menu(
      title: 'ประเภทห้องเช่า',
      icon: Icons.water_damage_outlined,
      iconColor: Colors.teal,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomRout);
      },
    ),
    Menu(
      title: 'เปรียบเทียบราคาห้องเช่า',
      icon: Icons.all_inbox,
      iconColor: Colors.blueAccent,
      onTap: (context) {
        //Navigator.pushNamed(context, AppRoute.LoginRoute);
      },
    ),
    Menu(
      title: 'เพิ่มห้องเช่า',
      icon: Icons.add_box_outlined,
      iconColor: Colors.pinkAccent,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.addRoomRout);
      },
    ),

    // Menu(
    //   title: 'Map',
    //   icon: Icons.map,
    //   iconColor: Colors.cyan,
    //   onTap: (context) {
    //     //Navigator.pushNamed(context, Constant.mapRoute);
    //   },
    // ),
    // Menu(
    //   title: 'Dashboard',
    //   icon: Icons.dashboard,
    //   iconColor: Colors.indigo,
    //   onTap: (context) {
    //     //todo
    //   },
    // ),
    // Menu(
    //   title: 'Timeline',
    //   icon: Icons.timeline,
    //   iconColor: Colors.teal,
    //   onTap: (context) {
    //     //todo
    //   },
    // ),
    // Menu(
    //   title: 'Settings',
    //   icon: Icons.settings,
    //   iconColor: Colors.deepPurpleAccent,
    //   onTap: (context) {
    //     //todo
    //   },
    // ),
    // Menu(
    //   title: 'Upcoming Movie',
    //   icon: Icons.movie_creation_outlined,
    //   iconColor: Colors.pinkAccent,
    //   onTap: (context) {
    //     Navigator.pushNamed(context, AppRoute.upcomingMovieRoute);
    //   },
    // ),
  ];
}