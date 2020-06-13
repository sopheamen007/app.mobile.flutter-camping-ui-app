import 'package:camping_app_ui_1/pages/home_page.dart';
import 'package:camping_app_ui_1/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcomepage extends StatefulWidget {
  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SvgPicture.asset("assets/images/welcome_image.svg"),
          Column(
            children: <Widget>[
              Text(
                "Find yourself\noutside.",
                style: appTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Book unique camping experiences on over 300,300 campsites cabins, RV parks, public parks and more.",
                style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 13,height: 1.5,),textAlign: TextAlign.center,
              ),
              
            ],
          ),
          FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: primary,
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
              }, child: Container(
                width: double.infinity,
                height: 45,
                child: Center(
                  child: Text("Explore Now!",style: TextStyle(color: textWhite),),
                ),
              ))
        ],
      ),
    ));
  }
}
