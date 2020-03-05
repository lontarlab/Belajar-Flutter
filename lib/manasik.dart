import 'package:flutter/material.dart';
import './layout.dart';

class Manasik extends StatefulWidget {
  @override
  _ManasikState createState() => _ManasikState();
}

class _ManasikState extends State<Manasik> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }


  
  @override
  Widget build(BuildContext context) {
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
          child: Text("Manasik",style: TextStyle(fontFamily: 'Comfortaa', fontSize: SizeConfig.BlockHorizontal*6),),
        ),
        bottom: TabBar(
          labelStyle: TextStyle(fontFamily: 'Comfortaa', fontSize: SizeConfig.BlockHorizontal*5),
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home, size: SizeConfig.BlockHorizontal*7,),text: "Umrah",),
            Tab(icon: Icon(Icons.home,size: SizeConfig.BlockHorizontal*7), text: "Haji",),
          ],
        ),
      ),

      body: Container(
        color: Colors.black12,
      ),
    );
  }
}
