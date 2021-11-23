import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nattawut032_miniproject/src/configs/app_route.dart';
import 'package:nattawut032_miniproject/src/configs/app_setting.dart';
import 'package:nattawut032_miniproject/src/widgets/menu_model.dart';



import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current =0;
  final List<String> imgList = [
    'https://img.home.co.th/images/img_v/img_Directory/20181107-140621418-l.jpg',
    'https://www.sansiri.com/condominium/dcondo-hatyai/img/emotional/Hero-Banner_dcondo-Kanchanavanich%E2%80%93Hatyai.jpg',
    'https://lumpiniplace.com/images_condo_other/Supalai-City-Resort-Phranangklao-Station%e2%80%93Chaophraya-oth-2021041209124596566363.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/18/6b/bb/63/monkham-village-hatyai.jpg',
    'http://img.painaidii.com/images/20190618_3_1560827659_665955.jpg',
    'https://3.bp.blogspot.com/-fOAp_yBy28I/XHO_WEK0_nI/AAAAAAABFbw/LIO5Rn0CyKgZ5-KrcY139_hk01IFe_GmwCLcBGAs/s1600/songkad700.jpg'
  ];

  List<Map<String, String>> imgArray = [
    // {
    //   "img":
    //   "https://images.unsplash.com/photo-1501084817091-a4f3d1d19e07?fit=crop&w=2700&q=80",
    //   "title": "Login",
    //   "description":
    //   "You need a creative space ready for your art? We got that covered.",
    //   "price": "\$125",
    //   "page": "login"
    // },
    // {
    //   "img":
    //   "https://images.unsplash.com/photo-1500628550463-c8881a54d4d4?fit=crop&w=2698&q=80",
    //   "title": "Info",
    //   "description":
    //   "Don't forget to visit one of the coolest art galleries in town.",
    //   "price": "\$200",
    //   "page": "info"
    // },
    // {
    //   "img":
    //   "https://images.unsplash.com/photo-1496680392913-a0417ec1a0ad?fit=crop&w=2700&q=80",
    //   "title": "Video Services",
    //   "description":
    //   "Some of the best music video services someone could have for the lowest prices.",
    //   "price": "\$300",
    //   "page": "upcoming"
    // },
  ];
  @override
  Widget build(BuildContext context) {
    PreferredSize(preferredSize: Size.fromWidth(100));
    return Scaffold(


      drawer: Drawer(


        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Column(


          // Important: Remove any padding from the ListView.
          children: [
            const UserAccountsDrawerHeader(


              //accountName: Text('Nattawut Bunwisoot'),

              decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage('assets/images/building-gb38c6d432_640.jpg'),
                fit: BoxFit.cover
                )
              ),

              // currentAccountPicture: CircleAvatar(
              //   backgroundImage: AssetImage('assets/images/images.jpg'),
              //
              //
              // ),
            ),


            ...MenuViewModel()

                .items
                .map((e) => ListTile(
                      leading: Icon(
                        e.icon,
                        color: e.iconColor,
                      ),
                      title: Text(e.title),
                      onTap: () {
                        e.onTap(context);
                        // Update the state of the app.
                        // ...
                      },
                    ))
                .toList(),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title:  Text('ออกจากระบบ'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove(AppSetting.userNameSetting);
                prefs.remove(AppSetting.passwordSetting);
                Navigator.pushNamedAndRemoveUntil(
                    context, AppRoute.LoginRoute, (route) => false) ;
                // Update the state of the app.
                // ...
              },
            ),

          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          centerTitle: true,
            backgroundColor: Colors.teal,
            title: Text('หน้าแรก')),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/011.jpg'),alignment: Alignment.topCenter),

        ),
        child: SingleChildScrollView(
          child: Column(children: [

            SizedBox(height: 220),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.roomRout);
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/home1.png'), scale: 10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //Text('MOVIE'),
                        SizedBox(width: 50),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoute.condoRout);
                  } ,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/building.png'),
                          scale: 10),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoute.mapRoute);
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/placeholder.png'), scale: 10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'คอนโดมีเนี่ยน อพาร์ทเมนท์ หอพัก',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     GestureDetector(
            //       onTap: (){
            //         Navigator.pushNamed(context, AppRoute.qrCreateRoute);
            //       },
            //       child: Container(
            //         width: 80,
            //         height: 80,
            //         decoration: ShapeDecoration(
            //           color: Colors.grey.shade400,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.all(
            //               Radius.circular(20),
            //             ),
            //           ),
            //           image: DecorationImage(
            //               image: AssetImage('assets/images/qr-gen.png'), scale: 10),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [Text('QR Gen')],
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 30),
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.pushNamed(context, AppRoute.upcomingMovieRoute);
            //       },
            //       child: GestureDetector(
            //         onTap: (){
            //           Navigator.pushNamed(context, AppRoute.qrScanRoute);
            //         },
            //         child: Container(
            //           width: 80,
            //           height: 80,
            //           decoration: ShapeDecoration(
            //             color: Colors.grey.shade400,
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(
            //                 Radius.circular(20),
            //               ),
            //             ),
            //             image: DecorationImage(
            //                 image: AssetImage('assets/images/qr-scan.png'),
            //                 scale: 10),
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 30),
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.pushNamed(context, AppRoute.gameRoute);
            //       },
            //       child: GestureDetector(
            //         onTap: (){
            //           Navigator.pushNamed(context, AppRoute.gameRoute);
            //         },
            //         child: Container(
            //           width: 80,
            //           height: 80,
            //           decoration: ShapeDecoration(
            //             color: Colors.grey.shade400,
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(
            //                 Radius.circular(20),
            //               ),
            //             ),
            //             image: DecorationImage(
            //                 image: AssetImage('assets/images/game01.jpg'),
            //                 scale: 10),
            //           ),
            //         ),
            //       ),
            //     )
            //
            //   ],
            // ),

            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Ink.image(
                    image: AssetImage('assets/images/econdo.jpg'),
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  Text(' It is a type of residence where the condominium owner must share ownership or ownership with other condominium '
                      'owners in common areas such as corridors, hallways, stairs'),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: Divider(
                color: Colors.black26,
                thickness: 5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ประเภทที่พัก',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent),
            ),

            SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: imgList.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.network(imgList[index],
                          fit: BoxFit.cover, width: 1000)),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){

              },
              tileColor: Colors.teal.shade400,
              trailing: Icon(Icons.favorite_border,color: Colors.red,),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/house.png'),
              ),
              title: Text('Nattawut Bunwisoot 032'),
              subtitle: Text('Kitipat Polnamin 039'),

            ),


            // SizedBox(height: 20),
            // CarouselSlider(
            //   items: imgArray
            //       .map((item) => GestureDetector(
            //         onTap: (){
            //           Navigator.pushNamed(context, item["page"]);
            //         },
            //         child: Container(
            //     child: Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Container(
            //               decoration: BoxDecoration(boxShadow: [
            //                 BoxShadow(
            //                     color: Color.fromRGBO(0, 0, 0, 0.4),
            //                     blurRadius: 8,
            //                     spreadRadius: 0.3,
            //                     offset: Offset(0, 3))
            //               ]),
            //               child: AspectRatio(
            //                 aspectRatio: 2 / 2,
            //                 child: ClipRRect(
            //                   borderRadius: BorderRadius.circular(4),
            //                   child: Image.network(
            //                     item["img"],
            //                     fit: BoxFit.cover,
            //                     alignment: Alignment.topCenter,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //           // Padding(
            //           //   padding: const EdgeInsets.only(top: 16.0),
            //           //   child: Column(
            //           //     children: [
            //           //       Text(item["price"],
            //           //           style: TextStyle(
            //           //               fontSize: 16, color: Colors.cyan)),
            //           //       Text(item["title"],
            //           //           style:
            //           //           TextStyle(fontSize: 32, color: Colors.black)),
            //           //       Padding(
            //           //         padding: const EdgeInsets.only(
            //           //             left: 16.0, right: 16.0, top: 8),
            //           //         child: Text(
            //           //           item["description"],
            //           //           style: TextStyle(
            //           //               fontSize: 16, color: Colors.red),
            //           //           textAlign: TextAlign.center,
            //           //         ),
            //           //       )
            //           //     ],
            //           //   ),
            //           // )
            //         ],
            //     ),
            //   ),
            //       ))
            //       .toList(),
            //   options: CarouselOptions(
            //       height: 530,
            //       autoPlay: false,
            //       enlargeCenterPage: false,
            //       aspectRatio: 4 / 4,
            //       enableInfiniteScroll: false,
            //       initialPage: 0,
            //       // viewportFraction: 1.0,
            //       onPageChanged: (index, reason) {
            //         setState(() {
            //           _current = index;
            //         });
            //       }),
            // ),
          ]),
        ),
      ),
    );
  }
}
