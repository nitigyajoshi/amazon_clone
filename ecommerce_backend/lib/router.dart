import 'package:ecommerce_backend/feature/auth/screen/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>generateRoute(RouteSettings routeSettings){
switch(routeSettings.name){
  case AuthScreen.routeName:return MaterialPageRoute(settings: routeSettings,builder: (_)=> AuthScreen());
default:return MaterialPageRoute(settings: routeSettings,builder: (_)=>const Scaffold(body: Center(child: Text('Error occured'),),));

  
}

}