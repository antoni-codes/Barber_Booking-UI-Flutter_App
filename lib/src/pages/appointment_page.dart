import 'package:barber_booking/src/fonts/barber_icon_icons.dart';
import 'package:flutter/material.dart';


class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text( 'Citas', style: TextStyle( fontSize: 19.0, fontWeight: FontWeight.w300 ) ),
        elevation: 0.0,
        actions: <Widget>[
          Icon( Icons.more_vert )
        ],
        
      ),
      body: ListView(
        children: <Widget>[
          Citas1(),
          Citas2(),
          Citas1(),
          Citas2(),
          Citas1(),
          Citas2(),
          Citas1(),
          Citas2(),
          Citas1(),
          Citas2(),
          Citas1(),
          Citas2(),

        ]
      ),
    );
  }

}

class Citas1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
     

      Card(
        shape: BeveledRectangleBorder(),
        margin: EdgeInsets.only( left: 30.0, right: 30.0, top: 10.0 ),
        shadowColor: Colors.black87,
        elevation: 8.0,
        child: Container(
          height: 110.0,
          child: Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 90.0,
                  height: 85.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/img/profile1.png'))
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 10.0),
                width: 210.0,
                height: 90.0,
                child: Column(
                  children: <Widget> [
                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( Icons.person, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( 'Robert', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]
                    ),
                    
                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( Icons.location_on, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( 'Barberia Roma', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]
                    ),

                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( BarberIcon.barbero, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( 'Haircut', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]
                    ),

                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( Icons.access_time, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( '13-03-2020 3:30pm - 4:40pm', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]),
                    ],),
              ),
            ],),
        ),
      );
  }

}

class Citas2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Card(
        shape: BeveledRectangleBorder(),
        margin: EdgeInsets.only( left: 30.0, right: 30.0, top: 10.0 ),
        shadowColor: Colors.black87,
        elevation: 8.0,
        child: Container(
          height: 110.0,
          child: Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 90.0,
                  height: 85.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/img/profile2.jpg'))
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 10.0),
                width: 210.0,
                height: 90.0,
                child: Column(
                  children: <Widget> [
                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( Icons.person, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( 'Daniel', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]
                    ),
                    
                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( Icons.location_on, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( 'Barberia Universidad', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]
                    ),

                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( BarberIcon.barbero, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( 'Barba', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]
                    ),

                    SizedBox( height: 5.0 ),
                    Row(
                      children: <Widget> [
                        Icon( Icons.access_time, color:Theme.of(context).bottomAppBarTheme.color, size: 15.0, ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text( '13-03-2020 3:30pm - 4:40pm', style: TextStyle( color: Colors.black54, fontSize: 13.5 ), ),
                        )
                      ]),
                    ],),
              ),
            ],),
        ),
      );
  }
}