import 'package:flutter/material.dart';


class GalleryPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 25.0),
          child  : Text( 'Galeria', style: TextStyle( fontSize: 18.0, fontWeight: FontWeight.w300 )),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions  : <Widget>[
          IconButton(
            padding: const EdgeInsets.only(right: 10.0, bottom: 25.0),
            icon: Icon( Icons.more_vert ),
            onPressed: () {} )
        ],),
      body: ListView(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(
              children: <Widget>[
               _listGallery(),
            ],),
          )
        ],),
    );
  }

  Widget _listGallery() {

      return 
        Flexible(
          child: Row(
            children: <Widget>[

              //°°°Columna Izquierda°°°
              Flexible(
                child: Column(
                  children: <Widget>[
                    _cardsLeft(),
                    _cardsLeft(),
                    _cardsLeft(),
                  ],),
              ),

              //°°°Columna Derecha°°°
              Flexible(
                child: Column(
                  children: <Widget>[
                   _cardsRight(),
                   _cardsRight(),
                   _cardsRight(),
                   

                  ],),
              ),],
      ),
    );

  }

Widget _cardsLeft() {
  
  return Column(
    children: <Widget>[

      //Card mediana
      Card(
        // margin: EdgeInsets.only( left: 30.0, ),
        shape : BeveledRectangleBorder(),
        child : Stack(
          children: <Widget>[ 
          Column(
            children: <Widget>[
              Container(
                width : 160.0,
                height: 210.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/corte10.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Undercut',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                        SizedBox(width: 20.0,)
                      ],
                    ),
                    Container (height: 10.0 ,)
                  ],
                ),
              ),
            ],
          ),
          ],
        ),
      ),

      SizedBox( height: 10.0, ),

      //Card Pequeña
      Card(
        // margin: EdgeInsets.only( left: 30.0 ),
        shape : BeveledRectangleBorder(),
        child : Container(
          width: 160.0,
          height:150.0,
          decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/rizado.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Rizado',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 20.0,)
                      ],
                    ),
                    Container (height: 10.0 ,)
                  ],
                ),
        )
      ),
      
     SizedBox( height: 10.0, ),

     //Card Pequeña 
     Card(
      //  margin: EdgeInsets.only( left: 30.0, ),
       shape : BeveledRectangleBorder(),
       child : Container(
         width : 160.0,
         height: 150.0,
         decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/corte8.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Spiky',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 20.0,)
                      ],
                    ),
                    Container (height: 10.0 ,)
                  ],
                ),
       )
     ),

     //Card Grande 
     SizedBox( height: 10.0, ),

     Card(
      //  margin: EdgeInsets.only( left: 30.0),
       shape : BeveledRectangleBorder(),
       child : Container(
         width : 160.0,
         height: 250.0,
         decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/4.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Fade Beard',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 20.0,)
                      ],),
                    Container (height: 10.0 ,)
                  ],),
       )
     ),
    ],);

}

Widget _cardsRight() {

  return  Column(
    children: <Widget>[
      
      //Card - pequeña
      Card(
        margin: EdgeInsets.only( left: 13.5, top: 0.0 ),
        shape : BeveledRectangleBorder(),
        child : Container(
          width : 160.0,
          height: 150.0,
          decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/hairandbeard.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Cabello y Barba',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 10.0,)
                      ],
                    ),
                    Container (height: 10.0 ,)
                  ],
                ),
        )
      ),

      SizedBox( height: 15.0, ),

      //Card Grande
      Card(
        margin: EdgeInsets.only( left: 13.5),
        shape : BeveledRectangleBorder(),
        child : Container(
          width : 160.0,
          height: 250.0,
          decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/haircoloring.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Colorado',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 20.0,)
                      ],
                    ),
                    Container (height: 10.0 ,)
                  ],
                ),   
        )
      ),

      SizedBox( height: 15.0, ),

      //card Mediana
      Card(
        margin: EdgeInsets.only( left: 13.5,),
        shape : BeveledRectangleBorder(),
        child : Container(
          width: 160.0,
          height:210.0,
          decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/2.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Line Up',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 20.0,)
                      ],
                    ),
                    Container (height: 20.0 ,)
                  ],
                ),
        )
      ),

      SizedBox( height: 15.0, ),

      //Card Pequeña
      Card(
        margin: EdgeInsets.only( left: 13.5,),
        shape : BeveledRectangleBorder(),
        child : Container(
          width: 160.0,
          height:150.0,
          decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply ),
                    image: AssetImage( 'assets/img/corte3.jpg' ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                    )
                  ],),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Flequillo',  style: TextStyle(color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300), ),
                        SizedBox(width: 20.0,)
                      ],),
                    Container (height: 10.0 ,)
                  ],),
        )
      ),
      SizedBox(height: 11.0,)
    ]);

}



}