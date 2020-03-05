import 'package:flutter/material.dart';
import './layout.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
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
        title: Center(
          child: Text("Akun",style: TextStyle(fontFamily: 'Comfortaa', fontSize: SizeConfig.BlockHorizontal*6),),
        ),
        bottom: TabBar(
          labelStyle: TextStyle(fontFamily: 'Comfortaa', fontSize: SizeConfig.BlockHorizontal*5,),
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.account_circle, size: SizeConfig.BlockHorizontal*7,),text: "Akun Saya",),
            Tab(icon: Icon(Icons.info, size: SizeConfig.BlockHorizontal*7,), text: "Detail Info",),
          ],
        ),
      ),

      body: TabBarView(
          controller: controller,
        children: <Widget>[
          AkunSaya(),
          Detail(),
        ],
      ),
    );
  }
}

class AkunSaya extends StatefulWidget {
  @override
  _AkunSayaState createState() => _AkunSayaState();
}

class _AkunSayaState extends State<AkunSaya> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: SizeConfig.BlockVertical*35,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromRGBO(179, 2, 0, 1),
                      Color.fromRGBO(128, 44,96, 1),
                    ]
                ),
              ),
              child: Center(
                child: InkWell(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/icon_logo_marbot.png"),
                    radius: SizeConfig.BlockHorizontal*15,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}


class  Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Image.asset("assets/images/linkajaqr.png"),
    );
  }
}


