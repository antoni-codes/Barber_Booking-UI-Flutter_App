import 'package:flutter/material.dart';

// import 'package:barber_booking/src/fonts/barber_icon_icons.dart';

import 'package:barber_booking/src/pages/appointment_page.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 10.0, bottom: 25.0),
          child: Text('Perfil', style: TextStyle( color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w300 ),)),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only( right: 10.0, bottom: 25.0 ),
            icon: Icon( Icons.more_vert, color: Colors.black ),
            onPressed: () {},
          )
        ],
      ),
      body:ListView(
        children: <Widget>[
          _profileMember(context),
          _capturas(),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Container(width: 30.0,),
              Text('Citas', style: TextStyle( color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.w300 )),
              Container(width: 230.0,),
              InkWell(
            child:  Text('Ver más', style: TextStyle( color: Color.fromRGBO( 172, 128, 39, 1.0 ), fontSize: 15.0, fontWeight: FontWeight.w300 ), ),
            onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => AppointmentPage())),  
            ),
          ]),
          Citas1(),
          Citas2(),
          Citas1(),
          Citas2(),
        ],
      )
    );
  }


  Widget _profileMember(BuildContext context) {

    return Column(
      children: <Widget>[

        SizedBox( height: 20.0, ),
        Container(  
          // padding: EdgeInsets.only(top: 30.0),
          width: MediaQuery.of(context).size.width,
          height: 240.0,
          child:  Column(
          children: <Widget>[
            Container(
              width: 95.0,
              height:90.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.multiply),
                  image: AssetImage( 'assets/img/member4.jpg' ),
                  fit: BoxFit.cover
                ),
                boxShadow: [
                  BoxShadow( color: Colors.black26, offset:Offset( 0.0, 3.0 ), blurRadius: 10.0 )
                ]            
              ),
            ),

            SizedBox(height: 15.0,), 
            Flexible(
              child: Container(
                // padding: EdgeInsets.only( top: 20.0 ),
                width: 140.0,
                height:50.0,
                child: Column(
                  children: <Widget>[
                    Text('Iker Elias P.', style: TextStyle( fontSize: 18.0, fontWeight: FontWeight.w400 ),),
                    Text('Miembro', style: TextStyle( color: Colors.grey ),),
                  ],
                ),  
              ),
            ),


            Row(
             children: <Widget>[

              SizedBox( width: 50.0, ), 
              Container(
                width: 85.0,
                height:60.0,
                child: ListTile(
                  title: Text('12', style: TextStyle( color: Color.fromRGBO(172, 128, 39, 1.0), fontSize: 20.0), textAlign: TextAlign.center,),
                  subtitle: Text ('Capturas', style: TextStyle( color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.0  )),
                )
              ),

              SizedBox( width: 20.0, ), 
              Container(
                width: 85.0,
                height:60.0,
                child: ListTile(
                 title: Text('31', style: TextStyle( color: Color.fromRGBO(172, 128, 39, 1.0), fontSize: 20.0 ), textAlign: TextAlign.center,),
                  subtitle: Text ('Citas', style: TextStyle( color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.0  ), textAlign: TextAlign.center),
                )
              ),

              SizedBox( width: 20.0, ), 
              Container(
                width: 85.0,
                height:60.0,
                child: ListTile(
                title: Text('123', style: TextStyle( color: Color.fromRGBO(172, 128, 39, 1.0), fontSize: 20.0), textAlign: TextAlign.center,),
                  subtitle: Text ('Likes', style: TextStyle( color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.0  ), textAlign: TextAlign.center,),
                )
              ),
            ])
        ]),
    ),   
  ]);

}

  Widget _capturas() {

  return Column(
    
      children: <Widget> [
      Row(
      children: <Widget>[
        Container(width: 30.0,),
        Text('Capturas', style: TextStyle( color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.w300 )),
        Container(width: 195.0,),
        Text('Ver más', style: TextStyle( color: Color.fromRGBO( 172, 128, 39, 1.0 ), fontSize: 15.0, fontWeight: FontWeight.w300 )),
      ]),
      SizedBox( height: 10.0, ),
      Row(
        children: <Widget>[

          SizedBox( width: 30.0, ), 
          Container(
            width: 100.0,
            height:110.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img/member1.jpg'), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(color: Colors.black26, offset: Offset( 0.0, 2.0 ), blurRadius: 4.0 )
              ]
            )
          ),

          SizedBox( width: 15.0, ), 
          Container(
            width: 100.0,
            height:110.0,
             decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img/member2.jpg'), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(color: Colors.black26, offset: Offset( 0.0, 2.0 ), blurRadius: 4.0 )
              ]
            )
          ),

          SizedBox( width: 15.0, ), 
          Container(
            width: 100.0,
            height:110.0,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img/member3.jpg'), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(color: Colors.black26, offset: Offset( 0.0, 2.0 ), blurRadius: 4.0 )
              ]
            )
          ),

          
        ],)
    ]); 

}

  



}