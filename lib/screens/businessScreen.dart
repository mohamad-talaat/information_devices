
import 'package:coders/data/Cubit.dart';
import 'package:coders/data/States.dart';
import 'package:coders/widgetsApisData.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class business_Screen extends StatelessWidget {

  Widget build( context ) {
return BlocConsumer<newsAppCubit , newsAppStates>(
  builder: (context, state) {
  var list =newsAppCubit.get(context).business ;
  return Scaffold(
    body:ConditionalBuilder(condition: state is! newAppbusinessLoadingState,
        fallback:(context) => Center(child: CircularProgressIndicator()),
      builder: (context) {
        return ListView.separated(itemBuilder: (context, index)=>
            ANANA(newsAppCubit.get(context).business[index] //to call on (var business=[];)from Cubit ((the place where carry the data))
            //لازم نديله كمان index//    لأنه هو اللي هيحمل الداتا ويعرضها علي الاسكرين
            , context
        ),
  separatorBuilder: (context, index) => Container(),
  itemCount: list.length);
      }
    )
);

}, listener: (context, state) {},
);
  }}


