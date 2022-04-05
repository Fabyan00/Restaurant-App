import 'package:flutter/material.dart';
import 'sliderItems.dart';
class slider extends StatelessWidget{
  final int slideIndex;
  slider(this.slideIndex);
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          //RESTAURANT LOGO
          Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        //RESTAURANT LOGO IMAGE
                        //image: AssetImage('images/3574257.jpg'),
                        image: AssetImage(sliderList[slideIndex].imageUrl),
                        fit: BoxFit.fitWidth
                      )
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          //RESTAURANT STAR ICONS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              Icon(Icons.star_rounded, color:Colors.amberAccent,),
              Icon(Icons.star_rounded, color:Colors.amberAccent),
              Icon(Icons.star_rounded, color:Colors.amberAccent, size: 45),
              Icon(Icons.star_rounded, color:Colors.amberAccent),
              Icon(Icons.star_rounded, color:Colors.amberAccent),
            ],
          ),
          SizedBox(height: 20),
          Text(
            sliderList[slideIndex].title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey
            ),
          ),
          SizedBox(height: 20),
          //QUIENES SÓMOS?
          Text(
            sliderList[slideIndex].txt,
            textAlign:TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3E2723)
            ),
          ),
        ],
      )
    );
  }
}