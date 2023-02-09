import 'package:bloc/bloc.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter_app1/API_project/StatesApp.dart';
import 'package:flutter_app1/API_project/screens/businessScreen.dart';
import 'package:flutter_app1/API_project/dio_helper.dart';
import 'package:flutter_app1/API_project/screens/settingScreen.dart';
import 'package:flutter_app1/API_project/screens/sienceScreen.dart';
import 'package:flutter_app1/API_project/screens/sportsScreen.dart';

class newsAppCubit extends Cubit<newsAppStates>
 {
  newsAppCubit() : super(newsAppStates());

  static newsAppCubit get(context) =>BlocProvider.of(context); // this is object from class(AppNewsCubit)
  // when you want to recall it (AppNewsCubit.get(context).TheVariable Or Method)

int C_index = 0 ;
 void ChangeBNavBar(index){ emit(changeBottomNavBar());
   C_index=index ;}
//https://newsapi.org/v2/top-headlines?country=eg&apiKey=c9549d6d17f24a06a3405763441e9825
   List screens =[
     business_Screen(),
     science_Screen(),
     sports_Screen(),
     setting_Screen()
  ];
  List<dynamic> setting=[];
  var business=[];
 void getBusiness(){
   emit(newAppbusinessLoadingState());
   DioHelper.getData(url: 'v2/top-headlines',
       query:{'country':'eg' , 'apiKey' :'c9549d6d17f24a06a3405763441e9825','category':'business' //مشئوله عن فصل الاخبار يعني هنا هتجيب بيزنس بس
   }).
   then((value){
     business = value.data['articles']; print(business);
     emit(newAppbusinessSuccessfullState());
     }).
   catchError((error){print(error.toString());emit(newAppbusinessErrorState(error));});
 }
  List<dynamic>  science=[];
 void getScience(){
   emit(newAppScienceLoadingState());
   DioHelper.getData(url: 'v2/top-headlines',
       query:{'country':'eg' , 'apiKey' :'c9549d6d17f24a06a3405763441e9825'  ,'category':'science'}).
   then((value){emit(newAppScienceSuccessfullState());
     science =value.data['articles']; print(science);}).
   catchError((error){print(error.toString());emit(newAppScienceErrorState(error));});
 }
  List<dynamic>  sports=[];
 void getsports(){
   emit(newAppbusinessLoadingState());
   DioHelper.getData(url: 'v2/top-headlines', query:{'country':'eg'   ,'category':'sports'
     , 'apiKey' :'c9549d6d17f24a06a3405763441e9825'}).
   then((value){ emit(newAppbusinessSuccessfullState());
     sports =value.data['articles'];print(sports);}).
   catchError((error){print(error.toString());emit(newAppSportsErrorState(error));});
 }
  List<dynamic> search=[];
  void getSearch( String value){
    emit(newAppSearchoadingState());
    DioHelper.getData (url: 'v2/everything',
        query:{'q': '$value','apiKey' :'c9549d6d17f24a06a3405763441e9825'}).
    then((value){
    search =value.data['articles'];print(search [0] ['title']);
    emit(newAppSearchSuccessfullState());}).
    catchError((error){ print(error.toString());emit(newAppSearchErrorState(error));});
  }


  bool adark = true ;
 void isDark(){
   adark =! adark ;
   emit(appNewsIsDark());
 }

}