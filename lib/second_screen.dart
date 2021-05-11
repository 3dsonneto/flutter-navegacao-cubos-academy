import 'package:flutter/material.dart';
import 'package:navigation/third_screen.dart';

class SecondScreen extends StatelessWidget {
  final String title;

  SecondScreen(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "Olá tela home");
                  },
                  child: Text("Voltar"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final parameters = ThirdParameters("Edson", 24);
                  Navigator.pushNamed(context, "third", arguments: parameters);
                },
                child: Text(
                  "Tela 3",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final parameters = ThirdParameters("Edson", 24);
                  Navigator.popAndPushNamed(context, "third",
                      arguments: parameters);
                },
                child: Text("Replace Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
