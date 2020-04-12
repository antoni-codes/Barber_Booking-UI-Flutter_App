import 'package:flutter/material.dart';



class ResultsPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resulados de busqueda"),
        centerTitle: true,
        leading: InkWell (
          child: Icon( Icons.arrow_back ),
          onTap: () {
            Navigator.pop(context);
          }
          ),
      ),
    );
  }
}