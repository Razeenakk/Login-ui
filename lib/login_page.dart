import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginpage/clipper/custom_clipper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin :FractionalOffset(0.5,0),
                end: FractionalOffset(0,0.5),
                colors: [Color(0x7D7D65EC),Colors.blue,],
              )
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ClipPath(
              clipper:SideCutClipper(),
              child: Container(
                height:700,
                width: 700,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              top: 35,
              left: 110,
              child: Column(
                children: [
                  Text('Log In',style: TextStyle(color: Colors.white,fontSize:40,fontWeight:FontWeight.w800),),
                  Text('Log into your account',style: TextStyle(color: Colors.white.withOpacity(0.5)),)
                ],)
          ),
          Positioned(
            top: 110,
              left: 35.5,
              child: Container(
                height: MediaQuery.of(context).size.height*.82,
                width: MediaQuery.of(context).size.width*.8,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 5,
                    color: Colors.grey,
                    offset: Offset(0,5),
                  )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                          labelText: 'User Name',
                          hintText: 'Enter Name',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Email',
                          hintText: 'Enter Email',
                            border: OutlineInputBorder()
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Icons.key) ,
                          suffixIcon: Icon(Icons.remove_red_eye_rounded),
                          labelText: 'Password',
                            hintText: ('Enter password'),
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Text('Forget Password ?'),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*.07,
                        width: MediaQuery.of(context).size.width*.66,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: ElevatedButton(onPressed: (){},
                            child: Text('Log In')
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                          ),
                         Text('or'),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                          ),
                        ],),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*.07,
                      width: MediaQuery.of(context).size.width*.66,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                      ),
                   child:
                      ElevatedButton(onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(FontAwesomeIcons.google),
                              Text('LOGIN WITH GOOGLE'),

                            ],),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*.07,
                        width: MediaQuery.of(context).size.width*.66,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child:  ElevatedButton(onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(FontAwesomeIcons.facebook),
                                Text('LOGIN WITH FACEBOOK'),
                              ],)
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 45,),
                        Text('Dont have an account'),
                        TextButton(onPressed: (){},
                            child:Text('Sign Up')
                        )
                      ],)
                  ],),
              )
          )
        ],),
    );
  }
}
