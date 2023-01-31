import 'package:flutter/material.dart';

import 'loginScreen.dart';

void main()=>runApp(const KeysProject());


class KeysProject extends StatelessWidget {
  const KeysProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
