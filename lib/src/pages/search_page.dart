import 'package:flutter/material.dart';
//Dirección a página de buscador
import 'package:barber_booking/src/pages/results_page.dart';


class SearchPage extends StatefulWidget {
  

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 25.0 ),
          child: Text('Buscar', style: TextStyle(   fontSize: 18.0, fontWeight: FontWeight.w300 ),),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only( right: 10.0, bottom: 25.0 ),
            icon: Icon(Icons.more_vert, color: Colors.black,), 
            onPressed: () {}
            )
        ],
      ),
      body: ListView(
        children: <Widget>[
          
          _buscadorSeccion( context ),
          _popularesBuscador(),
         
        ],
      )
    );
  }

  Widget _buscadorSeccion( BuildContext context ) {

    return Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container( height:100.0 )
                ],
              ),

              SizedBox( width: 30.0, ),

              Container(
                width: 270.0,
                height: 45.0,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   boxShadow: [
                    BoxShadow(
                      color: Colors.black12, 
                      offset: Offset( 0.0, 5.0 ),
                      blurRadius: 4.0
                     )
                   ]
                 ),
                child: Row(
                  children: <Widget>[

                    SizedBox( width: 15.0, ),

                    Flexible(
                      child: Container(
                        width: 160.0,
                        height: 35.0,
                        child: Container(
                          padding: EdgeInsets.only( top: 6.0 ),
                          child: Text('Buscar...', style: TextStyle( color: Colors.black54,  fontWeight: FontWeight.w300) )),

                      ),
                    ),

                    SizedBox( width: 35.0 ),

                    Container(
                      width: 50.0,
                      height:35.0,
                      
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage() ));
                        },
                        child: Icon( Icons.search, size: 28.0 ),
                      ),
                    )
                  ],
                )
                ),

               SizedBox( width: 15.0, ),

              Flexible(
                child: Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                     color: Theme.of(context).bottomAppBarTheme.color ,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset( 0.0, 5.0 ),
                        blurRadius: 4.0
                      )
                    ]
                  ),
                  child: Icon( Icons.filter_list, size: 28.0, ),
                  ),
              )
            ],
          );

  }

  Widget _popularesBuscador() {

    return  Column(
            children: <Widget> [

              Container(
                padding: EdgeInsets.only( left: 30.0, bottom: 10.0 ),
                alignment: Alignment.topLeft,
                child: Text('Busquedas populares', style: TextStyle(color: Colors.black45, fontSize: 18.0, fontWeight: FontWeight.w300))
              ),

              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/corte1.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Mid Fade', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

              SizedBox( height: 10.0 ),

                Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/corte5.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Line Up', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

              SizedBox( height: 10.0 ),

                Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/corte3.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Caesar', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

              SizedBox( height: 10.0 ),

                Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/corte8.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Spiky', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

              SizedBox( height: 10.0 ),

                Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/barba1.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Fade Beard', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

             SizedBox( height: 10.0 ),

                Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/corte12.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Line Up Classic', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

              SizedBox( height: 10.0 ),

                Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                       width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.multiply),
                          image: AssetImage('assets/img/corte11.jpg'),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow( color: Colors.black26, offset: Offset( 0.0, 5.0 ), blurRadius: 4.0
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text( 'Mid Fade', style: TextStyle( color: Colors.white70,  fontSize: 18.0, fontWeight: FontWeight.w300 ), ),
                              Container(
                                width: 23.0,
                              ),
                            ],
                          ),
                          SizedBox( height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] 
              ),

              SizedBox( height: 10.0 ),
            ]
          );
  }
}