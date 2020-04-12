
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Routes Pages
import 'package:barber_booking/src/pages/main_page.dart';
import 'package:barber_booking/src/pages/start_page.dart';
import 'package:barber_booking/src/pages/search_page.dart';
import 'package:barber_booking/src/pages/gallery_page.dart';
import 'package:barber_booking/src/pages/welcome_page.dart';
import 'package:barber_booking/src/pages/results_page.dart';
import 'package:barber_booking/src/pages/appointment_page.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.black,
  )); 

  runApp(MyApp());

}
 

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      title: 'BarberShop Booking',
      initialRoute: 'welcome',
      routes: {
        'home'            :  ( BuildContext context )   =>   MainPage(),
        'start'           :  ( BuildContext context )   =>   StartPage(),
        'search'          :  ( BuildContext context )   =>   SearchPage(),
        'gallery'         :  ( BuildContext context )   =>   GalleryPage(),
        'welcome'         :  ( BuildContext context )   =>   WelcomePage(),
        'results'         :  ( BuildContext context )   =>   ResultsPage(), 
        'appointments'    :  ( BuildContext context )   =>   AppointmentPage(), 
      },

      //Theme de diseños general de la Aplicación
      theme: ThemeData(
        primaryColor: Colors.white,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color.fromRGBO(172, 128, 39, 1.0),
        ),

      ),
    );
  }
}