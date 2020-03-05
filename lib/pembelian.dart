import 'package:flutter/material.dart';
import './layout.dart';

class Pembelian extends StatefulWidget {
  @override
  _PembelianState createState() => _PembelianState();
}

class _PembelianState extends State<Pembelian> with SingleTickerProviderStateMixin{
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
          child: Text("Pembelian",style: TextStyle(fontFamily: 'Comfortaa', fontSize: SizeConfig.BlockHorizontal*6),),
        ),
        bottom: TabBar(
          labelStyle: TextStyle(fontFamily: 'Comfortaa', fontSize: SizeConfig.BlockHorizontal*5),
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.menu, size: SizeConfig.BlockHorizontal*7),text: "Aktivitas",),
            Tab(icon: Icon(Icons.history, size: SizeConfig.BlockHorizontal*7), text: "History",),
          ],
        ),
      ),

      body: Container(
        color: Colors.black12,
      ),
    );
  }
}
