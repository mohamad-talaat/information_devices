import 'package:coders/data/Cubit.dart';
import 'package:coders/data/States.dart';
import 'package:coders/data/dio_helper.dart';
import 'package:coders/newsAppScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


main(){
  runApp(MyApp());
    DioHelper.init();
}
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return
      MultiBlocProvider(providers: [  BlocProvider(create: (context) =>
    newsAppCubit()..getBusiness()..getScience()..getsports(),)],
          child: BlocConsumer<newsAppCubit, newsAppStates>(
            builder: (context, state) {return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    textTheme: const TextTheme(bodyText1: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17.0,)),
                    primarySwatch: Colors.deepOrange,
                    appBarTheme: const AppBarTheme(backgroundColor: Colors.white,
                        iconTheme: IconThemeData(color: Colors.black),
                        elevation: 0.0,
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
                    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                      selectedItemColor: Colors.deepOrange,
                      backgroundColor: Colors.white,
                      type: BottomNavigationBarType.fixed,),
                    // اعدادات ثابته لاي بوتم ناف بار
                    scaffoldBackgroundColor: Colors.white,
                    // وحدنا لون الاسكافولد
                    floatingActionButtonTheme: const FloatingActionButtonThemeData(
                        backgroundColor: Colors.deepOrange)
                ),
                darkTheme: ThemeData(
                    textTheme: const TextTheme(bodyText1: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17.0,)),
                    primarySwatch: Colors.deepOrange,
                    appBarTheme: const AppBarTheme(backgroundColor: Colors.black26,
                      //   iconTheme:IconThemeData(color: Colors.black),
                      elevation: 0.0,
                      systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor: Colors.black38,
                          statusBarIconBrightness: Brightness.light),
                    ),
                    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                      unselectedIconTheme: const IconThemeData(color: Colors.white),
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
                    floatingActionButtonTheme: const FloatingActionButtonThemeData(
                        backgroundColor: Colors.deepOrange)
                ),
               themeMode:newsAppCubit.get(context).adark?ThemeMode.dark :ThemeMode.light,
                  home: newsApp(),);
            }, listener: (context, state) {},));



  }}
