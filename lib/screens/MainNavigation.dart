import 'package:calendar/constants/Colors.dart';
import 'package:calendar/screens/AddEvent.dart';
import 'package:calendar/screens/Friends.dart';
import 'package:calendar/screens/SeeEvents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calendar/screens/Home.dart';
import 'Profile.dart';

///Bottom menu da aplicação.
///Gerencia os contextos gerais das rotas.
///Obs: Não temos um arquivos de rotas configurado explicitamente.
///O fluxo de mudança de tela é feito semelhante ao android nativo,
///isto é, adicionando e removendo telas da stack.
class MainNavigation extends StatefulWidget {

  @override
  _MainNavigationState createState() =>  _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {

  int _currentIndex = 0;
  bool _hasNotification = false;

  @override
  void initState() {
    super.initState();
  }

  final tabs = [
    Center(child: Home()),
    Center(child: AddEvent()),
    Center(child: SeeEvents()),
    Center(child: Friends()),
    Center(child: Profile()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.white))
        ),// sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded),
                label: 'Novo',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.event),
                label: 'Eventos',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Amigos',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined),
              label: 'Perfil',
              backgroundColor: Colors.red,
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
    throw UnimplementedError();
  }
}