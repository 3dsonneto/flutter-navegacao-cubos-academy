import 'package:flutter/material.dart';

class ThirdParameters {
  final String name;
  final int idade;

  ThirdParameters(this.name, this.idade);
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final parameters =
        ModalRoute.of(context).settings.arguments as ThirdParameters;

    return Scaffold(
      appBar: AppBar(
        title: Text(parameters.name),
      ),
      body: Center(
        child: Text("${parameters.idade}"),
      ),
    );
  }
}
