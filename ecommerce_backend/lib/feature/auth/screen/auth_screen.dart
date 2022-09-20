import 'package:ecommerce_backend/constant/global_variable.dart';
import 'package:flutter/material.dart';
enum auth{
  signin,signup
}
class AuthScreen extends StatefulWidget {
  static const String routeName='/auth-screen';
 AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
    auth a=auth.signup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Global.greyBackgroundCOlor,body: SafeArea(child:
    
    
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
children: [
Text('Welcome',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
),
ListTile(
  title: Text('CreateAccount',style: TextStyle(fontWeight: FontWeight.w500),),
  leading: Radio(activeColor: Global.secondaryColor,value: auth.signup, groupValue: a, onChanged: (auth ?value){
setState(() {
 a=value!; 

});

  }),
),
ListTile(
  title: Text('Signin',style: TextStyle(fontWeight: FontWeight.w500),),
  leading: Radio(activeColor: Global.secondaryColor,value: auth.signin, groupValue: a, onChanged: (auth ?value){
setState(() {
 a=value!; 

});

  }),
)



],

      ),
    )),);
  }
}