class newsAppStates {}
 class changeBottomNavBar extends newsAppStates{}
 class newAppbusinessLoadingState extends newsAppStates{}
 class newAppbusinessSuccessfullState extends newsAppStates{}
 class newAppbusinessErrorState extends newsAppStates{
   final String error ;
   newAppbusinessErrorState(this.error);}class newAppSportsoadingState extends newsAppStates{}
 class newAppSportsSuccessfullState extends newsAppStates{}
 class newAppSportsErrorState extends newsAppStates{
   final String error ;
   newAppSportsErrorState(this.error);}
class newAppScienceLoadingState extends newsAppStates{}
 class newAppScienceSuccessfullState extends newsAppStates{}
 class newAppScienceErrorState extends newsAppStates{
   final String error ;
   newAppScienceErrorState(this.error);}
class appNewsIsDark extends newsAppStates{}

class newAppSearchoadingState extends newsAppStates{}
 class newAppSearchSuccessfullState extends newsAppStates{}
 class newAppSearchErrorState extends newsAppStates{
  final String error ;
  newAppSearchErrorState(this.error);
}
