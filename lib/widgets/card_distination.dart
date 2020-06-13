import 'package:camping_app_ui_1/themes/constant.dart';
import 'package:flutter/material.dart';

class CardDestination extends StatelessWidget {
  final String imgSrc;
  final String perNight;
  final String title;
  final String subTitle;
  final String reviews;
  const CardDestination({
    Key key, this.perNight, this.title, this.subTitle, this.reviews, this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  imgSrc),
              fit: BoxFit.cover)),
      child: Stack(
        children: <Widget>[
          Container(
            width: 200,
            height: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: new LinearGradient(
                    colors: [
                      textBlack.withOpacity(0.9),
                      textBlack.withOpacity(0.0)
                    ],
                    begin: FractionalOffset(0, 1),
                    end: FractionalOffset(0, 0))),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                        color: primary,
                        onPressed: () {},
                        child: Text(
                          "\$$perNight",
                          style: TextStyle(color: textWhite),
                        )),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: <Widget>[
                      Text(title,style: TextStyle(color: textWhite,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text(subTitle,style: TextStyle(color: textWhite.withOpacity(0.6)),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.star,color: starColor,size: 20,),
                          SizedBox(width: 5,),
                           Icon(Icons.star,color: starColor,size: 20,),
                          SizedBox(width: 5,),
                           Icon(Icons.star,color: starColor,size: 20,),
                          SizedBox(width: 5,),
                           Icon(Icons.star,color: starColor,size: 20,),
                          SizedBox(width: 5,),
                           Icon(Icons.star,color: starColor,size: 20,),
                          SizedBox(width: 5,),
                           
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("$reviews Reviews",style: TextStyle(color: textWhite.withOpacity(0.6)),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}