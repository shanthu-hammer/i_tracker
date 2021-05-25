import 'package:flutter/material.dart';
import 'package:i_tracker/components/custom_appbar.dart';
import 'package:i_tracker/constants/Theme/appcolors.dart';
import 'package:i_tracker/screens/auth_screens/passwordreset.dart';
import 'package:i_tracker/screens/auth_screens/signup.dart';
//TODO id , password
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

//git checking
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      //MyAppbar can take in the title from a Text Widget
      appBar: MyAppBar(title: Text('Login Page')),
      body: Container(
        height:height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Center(
                  child: Container(
                      width: width,
                      height: height*0.45,

                      child: Image.asset('asset/images/login.png',fit: BoxFit.fill,)),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon:Icon(Icons.email),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon:Icon(Icons.security),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                 print("inside forget password") ;//TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: ThemeColor.button, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                  print("inside signup page ") ;//TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Dont have an account? Signup',
                  style: TextStyle(color: ThemeColor.button, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
      //TODO "do the editing here"
    );
  }
}
