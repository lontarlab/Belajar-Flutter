import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './assets/flutter_icon_icons.dart';
import './layout.dart';
import './Home.dart' as HomePage;
import './pembelian.dart' as page;
import './manasik.dart' as manasik;
import './akun.dart' as akun;
import './lokasi.dart' as lokasi;
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    title: "Thawaf",
    home: Home(),
    routes: <String, WidgetBuilder>{
      "/LandingPage" : (BuildContext context)=> new page.Pembelian(),
      "/Lokasi" : (BuildContext context)=> new lokasi.Lokasi(),
    },
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }


  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  int _currentIndex = 0;

  final tabs = [
    new HomePage.HomePage(),
    new manasik.Manasik(),
    new page.Pembelian(),
    new akun.Akun(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return
      Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar:

        BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: SizeConfig.BlockHorizontal*7,
          selectedItemColor: Colors.purple,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text("Beranda", style: TextStyle(fontSize: SizeConfig.BlockHorizontal*4, fontFamily: 'Comfortaa'),),
            ),
            BottomNavigationBarItem(
              icon: Icon(FlutterIcon.kaaba,),
              title: Text("Manasik", style: TextStyle(fontSize: SizeConfig.BlockHorizontal*4, fontFamily: 'Comfortaa'),)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              title: Text("Pembelian",style: TextStyle(fontSize: SizeConfig.BlockHorizontal*4, fontFamily: 'Comfortaa'),)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,),
              title: Text("Akun Saya",style: TextStyle(fontSize: SizeConfig.BlockHorizontal*4, fontFamily: 'Comfortaa'),)
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        )
        );
  }
}
