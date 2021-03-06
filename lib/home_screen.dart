import 'package:flutter/material.dart';
import 'package:navigation/third_screen.dart';
import 'second_screen.dart';

class HomeScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String texto = "Nenhum";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            final parameter = ThirdParameters("Edson", 24);
            Navigator.pushNamed(context, "third", arguments: parameter);
          },
          child: Text("Tela 3"),
        ),
        Container(
          color: Colors.blue,
          child: ElevatedButton(
            onPressed: () async {
              final resultadoPop = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondScreen("Segunda Tela")),
              );
              setState(() {
                texto = resultadoPop;
              });
            },
            child: Text("Tela 2"),
          ),
        ),
        Material(child: Text(texto)),
      ],
    );
  }
}
