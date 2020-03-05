import 'package:flutter/material.dart';
import './assets/flutter_icon_icons.dart';
import './layout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.BlockHorizontal *10),
      child: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(179, 2, 0, 1),
                    Color.fromRGBO(128, 44,96, 1),
                  ]
              )
          ),
        ),
        title: Image(
          width: SizeConfig.BlockHorizontal*20,
          image: AssetImage("assets/images/logo_white_splash.png",),
        ),



        actions: <Widget>[
          Container(
            child:Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: new Icon(Icons.message, size: SizeConfig.BlockHorizontal*6,),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: new Icon(Icons.people, size: SizeConfig.BlockHorizontal*6,),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: new Icon(Icons.notifications, size: SizeConfig.BlockHorizontal*6,),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Adri"),
              accountEmail: Text("dry@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
              decoration: BoxDecoration(
                image:DecorationImage(
                    image: AssetImage("assets/images/raudah.jpg"),
                    fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              title: Text("Setting"),
              trailing:Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Close"),
              trailing:Icon(Icons.close),
            ),
          ],
        ),
      ),
      body:Center(
        child: new ListView(
        children: <Widget>[
          //Menu
          Column(
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MyMenu(icon: Icons.assignment_late,warnaIcon: Colors.white,warna: Color.fromRGBO(249, 122, 67, 1),navigasi: "/Alert",),
                      MyMenu(icon: Icons.map,warnaIcon: Colors.white,warna: Color.fromRGBO(249, 122, 67, 1),navigasi: "/Lokasi",),
                      MyMenu(icon: Icons.directions_car,warnaIcon: Colors.white,warna: Color.fromRGBO(249, 122, 67, 1),navigasi: "/LandingPage",),
                      MyMenu(icon: Icons.cloud,warnaIcon: Colors.white,warna: Color.fromRGBO(179, 2, 0, 1),navigasi: "/LandingPage",),
                      MyMenu(icon: Icons.translate,warnaIcon: Colors.white,warna: Color.fromRGBO(179, 2, 0, 1),navigasi: "/LandingPage",),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MyMenu(icon: Icons.call,warnaIcon: Colors.white,warna: Color.fromRGBO(179, 2, 0, 1),navigasi: "/LandingPage",),
                      MyMenu(icon: FlutterIcon.kaaba,warnaIcon: Colors.white,warna: Color.fromRGBO(249, 122, 67, 1),navigasi: "/LandingPage",),
                      MyMenu(icon: Icons.phone_iphone,warnaIcon: Colors.white,warna: Color.fromRGBO(92, 59, 147, 1),navigasi: "/LandingPage",),
                      MyMenu(icon: Icons.phone_iphone,warnaIcon: Colors.white,warna: Color.fromRGBO(92, 59, 147, 1),navigasi: "/LandingPage",),
                      MyMenu(icon: Icons.more_horiz,warnaIcon: Colors.white,warna: Color.fromRGBO(160, 160, 160, 1),navigasi: "/LandingPage",),
                    ],
                  ),
                ],
              ),

          //Menu Selesai
          Container(
           child: Column(
             children: <Widget>[
               new Text("Panduan", style: TextStyle(fontSize: SizeConfig.BlockHorizontal*6,fontFamily: 'Comfortaa'),),
               Divider(
                 color: Colors.black,
               )
             ],
           ),
          ),
          Container(
            height: SizeConfig.BlockVertical*12,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(image: "assets/images/sliderpanduan_umroh.jpg", width: SizeConfig.BlockHorizontal*45, navigasi: "",),
                Card(image: "assets/images/sliderpanduan_haji.jpg",width: SizeConfig.BlockHorizontal*45,navigasi: "",),
                Card(image: "assets/images/sliderpanduan_ibadahumum.jpg",width: SizeConfig.BlockHorizontal*45,navigasi:"" ,),
                Card(image: "assets/images/sliderpanduan_artikel.jpg",width: SizeConfig.BlockHorizontal*45,navigasi:"" ,),
              ],
            ),
          ),

          Container(
            height: SizeConfig.BlockVertical*12,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(image: "assets/images/highlight_zamzam.png",width: SizeConfig.BlockHorizontal*60,navigasi:"" ,),
                Card(image: "assets/images/highlight_infaq.png",width: SizeConfig.BlockHorizontal*60,navigasi: "",),
                Card(image: "assets/images/highlight_masakan.png",width:SizeConfig.BlockHorizontal*60,navigasi:"" ,),
              ],
            ),
          ),
          Divider(
           color: Colors.black,
          ),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Card(image: "assets/images/baksoo.jpg",width: SizeConfig.BlockHorizontal*100,height: SizeConfig.BlockVertical*15,),
                ),
                Container(
                  child: Text("Grapari"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Card(image: "assets/images/adv_bni.jpg",width: SizeConfig.BlockHorizontal*100,height: SizeConfig.BlockVertical*15,),
                ),
              ],
            )
          )
        ],
      ),
      ),
    );
  }
}



class MyMenu extends StatelessWidget {

  MyMenu({this.icon,this.warnaIcon,this.teks, this.warna, this.navigasi});

  final IconData icon;
  final String teks;
  final Color warna;
  final Color warnaIcon;
  final String navigasi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0,bottom: 25.0),
      child: SizedBox.fromSize(
        size: Size(MediaQuery.of(context).size.width/10, MediaQuery.of(context).size.width/10), // button width and height
        child: ClipOval(
          child: Material(
            color: warna, // button color
            child: InkWell(
              splashColor: Colors.red, // splash color
              onTap: () {
                if(navigasi=="/Alert"){
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          height: SizeConfig.BlockVertical*15,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text("Fitur Terbatas", style: TextStyle(fontSize: SizeConfig.BlockHorizontal*6, fontWeight: FontWeight.bold), ),
                                SizedBox(height: SizeConfig.BlockVertical*2),
                                Text("Silahkan login sebagai Jamaah Travel!", style: TextStyle(fontSize: SizeConfig.BlockHorizontal*4, fontWeight: FontWeight.normal), ),
                                SizedBox(height: 10),
                                Divider(
                                  color: Colors.black,
                                ),
                                InkWell(
                                  splashColor: Colors.grey,
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child:Container(
                                        child: Text("OKE", style: TextStyle(fontSize: SizeConfig.BlockHorizontal*5, color: Colors.blue),)
                                    )

                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  );
                }
                else
                  Navigator.pushNamed(context,navigasi);

                  
              }, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(icon,color: warnaIcon, size: MediaQuery.of(context).size.width/15,), // icon// text
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {

  Card({this.image ,this.width, this.navigasi, this.height});
  final String navigasi;
  final String image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Color.fromRGBO(179, 2, 0, 1),
        borderRadius: new BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(10.0),
        child: InkWell(
          splashColor: Colors.blue,
          onTap: (){
            Navigator.pushNamed(context, navigasi);
          },
          child: Image(
            image: AssetImage(image),
            height: height,
            width: width,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}






