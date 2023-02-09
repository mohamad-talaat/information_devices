import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class SettingsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    var ltr;
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Sport News',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold, fontSize: 18.0 ),)),
        actions: [ Icon(Icons.search_off_sharp ,) , SizedBox(width: 5.0,) ,Icon(Icons.brightness_4_outlined)],
      ),
body:Column(
  children: [
        Expanded(
          child: ListView.separated(scrollDirection: Axis.vertical,itemBuilder: (context, index) => Column(children: [

                Padding(

                    padding: const EdgeInsets.all(5.0),

                    child: Row(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Image(image: AssetImage('assets/images/all.jpg'),height: 100.0, width: 140.0,),

                          SizedBox(width: 10.0,),

                          Expanded(

                            child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [

                                  Text('muhammmad talaat ebrahim skjdnasl kjnadlsldk jdlkjdlkjdn ' ,

                                    style: TextStyle(fontWeight: FontWeight.bold , fontSize:18.0, ),

                                    maxLines: 3,overflow: TextOverflow.ellipsis,),

                                  Row(children: [

                                    Text('publish at', style: TextStyle( color: Colors.blue, fontSize: 15.0,decoration: TextDecoration.underline ),

                                      maxLines:1, overflow:TextOverflow.ellipsis,),]),]),)]))

      ,Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', style: TextStyle(color: Colors.blueAccent) ,maxLines: 1,),



    ])

                  ,separatorBuilder: (context, index) {return Container();}, itemCount: 10),
        ),
  ],
)
);


  }
}
