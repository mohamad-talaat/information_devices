import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app1/API_project/CubitApp.dart';
import 'package:flutter_app1/API_project/StatesApp.dart';
import 'package:flutter_app1/API_project/dio_helper.dart';
import 'package:flutter_app1/API_project/newsAppScreen.dart';

main(){
  runApp(myApp());
   new myApp();
DioHelper.init();
}
class myApp extends StatelessWidget {
  @override
  Widget build(context) {
    return
      MultiBlocProvider(providers: [  BlocProvider(create: (context) =>
    newsAppCubit()..getBusiness()..getScience()..getsports(),)],
          child: BlocConsumer<newsAppCubit, newsAppStates>(
            builder: (context, state) {return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    textTheme: TextTheme(bodyText1: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17.0,)),
                    primarySwatch: Colors.deepOrange,
                    appBarTheme: AppBarTheme(backgroundColor: Colors.white,
                        iconTheme: IconThemeData(color: Colors.black),
                        elevation: 0.0,
                        // دا علشان يخفي الخط الفاصل مابين الاباار والباضي
                        backwardsCompatibility: false,
                        // عشان اقدر اتحكم في الاستيتس بار
                        systemOverlayStyle: SystemUiOverlayStyle(
                            statusBarColor: Colors.white,
                            statusBarIconBrightness: Brightness.dark),
                        //  (الاستيتس بار)الجزء العلوي اللي فيه البطاريه والشريحه
                        titleTextStyle: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,)
                      //اعدادات ثابته لأي نص
                      // خليت اعدادات جميع النصوص واحده علشان اوفر ف الكود بحيث لكا اجي اكتب تيكست التيكست ستايل هيكون موجود
                    ),
                    bottomNavigationBarTheme: BottomNavigationBarThemeData(
                      selectedItemColor: Colors.deepOrange,
                      backgroundColor: Colors.white,
                      type: BottomNavigationBarType.fixed,),
                    // اعدادات ثابته لاي بوتم ناف بار
                    scaffoldBackgroundColor: Colors.white,
                    // وحدنا لون الاسكافولد
                    floatingActionButtonTheme: FloatingActionButtonThemeData(
                        backgroundColor: Colors.deepOrange)
                ),
                darkTheme: ThemeData(
                    textTheme: TextTheme(bodyText1: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17.0,)),
                    primarySwatch: Colors.deepOrange,
                    appBarTheme: AppBarTheme(backgroundColor: Colors.black26,
                      //   iconTheme:IconThemeData(color: Colors.black),
                      elevation: 0.0,
                      // دا علشان يخفي الخط الفاصل مابين الاباار والباضي
                      backwardsCompatibility: false,
                      // عشان اقدر اتحكم في الاستيتس بار
                      systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor: Colors.black38,
                          statusBarIconBrightness: Brightness.light),
                      //  (الاستيتس بار)الجزء العلوي اللي فيه البطاريه والشريحه
                      //   titleTextStyle: TextStyle(color:Colors.black, fontWeight:FontWeight.bold , fontSize: 25.0,)
                      //اعدادات ثابته لأي نص
                      // خليت اعدادات جميع النصوص واحده علشان اوفر ف الكود بحيث لكا اجي اكتب تيكست التيكست ستايل هيكون موجود
                    ),
                    bottomNavigationBarTheme: BottomNavigationBarThemeData(
                      unselectedIconTheme: IconThemeData(color: Colors.white),
                      // icon not selected
                      selectedIconTheme: IconThemeData(color: Colors.white),
                      // icon selected
                      selectedLabelStyle: TextStyle(color: Colors.deepOrange),
                      // Color when you clicked on icon
                      unselectedItemColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(color: Colors.white),
                      // the text has not selected
                      selectedItemColor: Colors.deepOrange,
                      backgroundColor: Colors.black26,
                      type: BottomNavigationBarType.fixed,),
                    // اعدادات ثابته لاي بوتم ناف بار
                    scaffoldBackgroundColor: Colors.black26,
                    // وحدنا لون الاسكافولد
                    floatingActionButtonTheme: FloatingActionButtonThemeData(
                        backgroundColor: Colors.deepOrange)
                ),
               themeMode:newsAppCubit.get(context).adark?ThemeMode.dark :ThemeMode.light,
                  home: newsApp(),);
            }, listener: (context, state) {},));



  }}
