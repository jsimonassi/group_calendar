import 'package:calendar/components/MainButton.dart';
import 'package:calendar/components/MainScreenTitle.dart';
import 'package:calendar/constants/Colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
                left: 15,
                right: 15
            ),
            child: Column(
                children: [
                  MainScreenTitle("Perfil"),

                  SizedBox(height: 20),

                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      maxRadius: 90,
                    ),
                  ),

                  Expanded(child: Container()),

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundBottomMenu,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [

                        //Título
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.backgroundLoginContainer,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 10
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              labelText: "Nome",
                              labelStyle: TextStyle(
                                color: Colors.black54,
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

                        //Título
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.backgroundLoginContainer,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 10
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              labelText: "E-mail",
                              labelStyle: TextStyle(
                                color: Colors.black54,
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

                        //Título
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.backgroundLoginContainer,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 10,
                            bottom: 10
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                color: Colors.black54,
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

                      ],
                    ),
                  ), //BL1

                  Expanded(child: Container()),

                  MainButton("SALVAR", () => print("Fui clicado")),

                  Expanded(child: Container()),

                ]
          ),
        )
      )
    );
  }
}
