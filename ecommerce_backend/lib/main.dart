import 'package:ecommerce_backend/constant/global_variable.dart';
import 'package:ecommerce_backend/feature/auth/screen/auth_screen.dart';
import 'package:ecommerce_backend/router.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        primaryColor: Global.secondaryColor,
        colorScheme: ColorScheme.light(),
appBarTheme:  AppBarTheme(
  elevation: 0,
  iconTheme: const IconThemeData(
color: Colors.black

  )
),

        scaffoldBackgroundColor:Global.backgroundColor,
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (setting)=>generateRoute(setting),
      home:Scaffold(
        body: AuthScreen()
//         Center(child: Builder(builder: (context){
// return ElevatedButton(onPressed: (){
//           Navigator.pushNamed(context, AuthScreen.routeName);
//         }, child:Text('click here'));

//         }),),
      )
    );
  }
}


