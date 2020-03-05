import 'package:flutter/material.dart';

class Lokasi extends StatefulWidget {
  @override
  _LokasiState createState() => _LokasiState();
}

class _LokasiState extends State<Lokasi> {
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
          child: Text("Lokasi-Lokasi" ,style: TextStyle(fontFamily: 'Comfortaa', fontSize: 20.0),),
        ),
      ),
      
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: Image.asset("assets/images/raudah.jpg"),
                title: Text ("Raudah", style:TextStyle(fontFamily: 'Comfortaa', fontSize: 20.0)),
                subtitle: Text("Landmark \n posisi :", style:TextStyle(fontFamily: 'Comfortaa', fontSize: 15.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: Image.asset("assets/images/raudah.jpg"),
                title: Text ("Raudah", style:TextStyle(fontFamily: 'Comfortaa', fontSize: 20.0)),
                subtitle: Text("Landmark \n posisi :", style:TextStyle(fontFamily: 'Comfortaa', fontSize: 15.0)),
              ),
            ),
          ],
        ),
      )
    );
  }
}
