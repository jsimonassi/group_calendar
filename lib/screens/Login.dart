import 'package:calendar/components/MainButton.dart';
import 'package:calendar/constants/Colors.dart';
import 'package:flutter/material.dart';

import 'MainNavigation.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {



  login(){
    //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => MainNavigation()), (Route<dynamic> route) => false);
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainNavigation()));
  }

  createAccount() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_login.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 330,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppColors.backgroundLoginContainer,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              padding: EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //EMAIL

                  Container(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              AppColors.backgroundMainButton1,
                              AppColors.backgroundMainButton2
                            ],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundLoginContainer,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(
                        //Texto escrito pelo usário
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  //PASSWORD

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundLoginContainer,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        labelText: "Senha",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(
                        //Texto escrito pelo usário
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  //MAIN BUTTON

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: new MainButton("ENTRAR", login),
                  ),

                  GestureDetector(
                    onTap: createAccount,
                    child: Container(
                      width: size.width,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 25),
                      child: Text(
                        "Não tem uma conta? Cadatre-se!",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
