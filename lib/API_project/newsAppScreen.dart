import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/API_project/CubitApp.dart';
import 'package:flutter_app1/API_project/StatesApp.dart';
import 'package:flutter_app1/API_project/screens/search.dart';
import 'package:flutter_app1/shared/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';

class newsApp extends StatelessWidget {
  Widget build(BuildContext context) {
  return BlocConsumer<newsAppCubit , newsAppStates>(
    builder: (context, state){
    var aa=newsAppCubit.get(context) ;
    return Scaffold(
    appBar:AppBar(title:Center(child: Text('${aa.screens[aa.C_index]}',style:Theme.of(context).textTheme.bodyText1),),
        // Text('${aaa['title']}' , maxLines: 3 , overflow: TextOverflow.ellipsis
        //     ,style:Theme.of(context).textTheme.bodyText1),
        actions: [

IconButton(icon: Icon(Icons.search),
  onPressed: (){
  NavigateTo(context , SearchScreen());
  },)    , SizedBox(width: 5.0,) ,
IconButton(onPressed: () {
  newsAppCubit.get(context).isDark();
}, icon: Icon(Icons.brightness_4_outlined))    ]),
      body:aa.screens[aa.C_index] ,
    bottomNavigationBar: BottomNavigationBar(currentIndex:aa.C_index , onTap: (index) {
    aa.ChangeBNavBar(index);}
      , items: [
        BottomNavigationBarItem(icon:Icon(Icons.business) , label: 'Business') ,
        BottomNavigationBarItem(icon:Icon(Icons.science_outlined) , label: 'Science') ,
        BottomNavigationBarItem(icon:Icon(Icons.sports) , label: 'sports') ,
        BottomNavigationBarItem(icon:Icon(Icons.settings) , label: 'Setting') ,



      ],),
  );},
    listener: (context, state) {},
  );

  }

}
