import 'package:flutter/material.dart';

class ChooseLanguageView extends StatelessWidget {
  const ChooseLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text('LANGUAGE'),
              SizedBox(height: 20),
              Text('Choisissez votre langue'),
            ],
          ),
        ],
      ),
    );
  }
}
