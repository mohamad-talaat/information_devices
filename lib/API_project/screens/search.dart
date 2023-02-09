
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ApisData.dart';
import '../CubitApp.dart';
import '../StatesApp.dart';

class SearchScreen extends StatelessWidget {
var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<newsAppCubit , newsAppStates>(
        builder:(context, state){
          var list = newsAppCubit.get(context).search ;
       return Scaffold(
              appBar: AppBar(),
              body:
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: defaultTextFromField(controller: searchController, typeOfText: TextInputType.text,
                      onChange: (value){newsAppCubit.get(context).getSearch(value);},
                      validate:(String value){
                        if(value.isEmpty){return 'search must not be empty' ;}return null; }
                      , label: 'search', prefix: Icons.search,

                ),),
                Expanded(child: articleBuilder(list, context , isSearch: true) ,) ,
              ],)

          );

        } , listener:(context, state) {

        },
    );
  }
}
