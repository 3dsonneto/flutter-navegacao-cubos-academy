import 'package:flutter/material.dart';

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
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Voltar"),
            ),
          ),
        ),
      ),
    );
  }
}
