import 'package:calendar/components/MainButton.dart';
import 'package:calendar/components/MainScreenTitle.dart';
import 'package:calendar/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:table_calendar/table_calendar.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {


  _openDateTimePicker(){
    DatePicker.showTimePicker(context,
        showTitleActions: true,
        showSecondsColumn: false,
        // minTime: DateTime.now(),
        // maxTime: DateTime(2050, 12, 30),
        onChanged: (date) {
          print('change $date');
        }, onConfirm: (date) {
          print('confirm $date');
        }, currentTime: DateTime.now(), locale: LocaleType.pt);
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 15,
            right: 15
          ),
          child: ListView(
            children: [
              MainScreenTitle("Novo Evento"),
              Container(
                child: TableCalendar(
                  calendarFormat: CalendarFormat.month,
                  firstDay: DateTime.now(),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ), //Calendar
              SizedBox(height: 20),
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
                          labelText: "Título",
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

                    //Início
                    GestureDetector(
                      onTap: _openDateTimePicker,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: AppColors.backgroundLoginContainer,
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 5,
                        ),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Início",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16
                              ),
                            )
                        ),
                      ),
                    ),


                    //Término
                    GestureDetector(
                      onTap: _openDateTimePicker,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: AppColors.backgroundLoginContainer,
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 5,
                          bottom: 10
                        ),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Término",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16
                              ),
                            )
                        ),
                      ),
                    ),

                  ],
                ),
              ), //BL1

              SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundBottomMenu,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [

                    //Busca de amigos
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
                          labelText: "Convidar amigos",
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
              ), //BL2

              SizedBox(height: 20),

              MainButton("SALVAR", () => print("Fui clicado!")),

              SizedBox(height: 20),

            ],
          ),
        ),
      )
    );
  }
}
