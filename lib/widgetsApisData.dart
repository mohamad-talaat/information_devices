

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/webviewScreen.dart';

Widget ANANA(aaa , context)=> InkWell(
  focusColor: Colors.green,

    onTap: (){
      NavigateTo(context, webviewScreen(aaa['url']));  },
    child:  Padding(
  padding: const EdgeInsets.all(15.0),
  child: Column(
    children: [SizedBox(height:5.0,),
      Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10.0,),
          Expanded(child:
          Image(image: NetworkImage('${aaa['urlToImage']}'),height: 103, width: 130, fit: BoxFit.fitHeight,)),
          SizedBox(width: 10.0,),
          Expanded(flex: 2,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Text('${aaa['title']}' , maxLines: 3 , overflow: TextOverflow.ellipsis
                    ,style:Theme.of(context).textTheme.bodyText1),
                SizedBox(height: 5,),
                Text('${aaa['publishedAt']}' , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold , color:Colors.blue),)
              ],),
          ),

        ],
      ),
      SizedBox(height: 2.0,),
      Text('---------------------------------', style: Theme.of(context).textTheme.bodyText1,),
      SizedBox(height: 2.0,),

    ],),
));

void NavigateTo(context, Widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ));

Widget defaultTextFromField({
  // for email and password button
  required TextEditingController controller,
  required TextInputType typeOfText,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  required Function validate,
  required String label,
  bool isPassword = false,
  required IconData prefix,
  IconData? suffix,
  Function()? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: typeOfText,
      obscureText: isPassword,
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      onChanged: (s) {
        onChange!(s);
      },
      onTap: () {
        onTap!();
      },
      validator: (String? value) {
        if (value!.isEmpty) {
          print('The Time Of Task Must Not Be Empty');
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
            onPressed: () {
              suffixPressed!();
            },
            icon: Icon(suffix))
            : null,
        border: const OutlineInputBorder(),
      ),
    );
Widget articleBuilder(list, context ,{isSearch= false} ) => ConditionalBuilder(
    condition: list.length > 0, //AppCubitNews.get(context).business.length >0,
    builder: (context) => ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => ANANA(list[index],
            context), //AppCubitNews.get(context).business[index] >0
        separatorBuilder: (context, index) => Container(),
        itemCount: list.length),
    fallback: (context) =>isSearch? Container():Center(child: CircularProgressIndicator()));



