import 'package:flutter/material.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/background.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          RoundedInputField(
            hintText: "yourName@email.com",
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
