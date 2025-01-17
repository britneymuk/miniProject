import 'package:flutter/material.dart';

class CustomView extends StatelessWidget {
  final double height;
  final bool circular;
  final List<Widget> children;

  CustomView(
      {@required this.height, @required this.children, this.circular = false});

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: this.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [ Color.fromRGBO(54, 218, 255, 1),Color.fromRGBO(3, 57, 252, 1)])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AppBar(
                title: Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Text(
                    "MySelamat",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MazzardH-Bold',
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                titleSpacing: 18.0,
                toolbarHeight: 65.0,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              ...children
            ],
          )
        ],
      ),
    );
  }
}
