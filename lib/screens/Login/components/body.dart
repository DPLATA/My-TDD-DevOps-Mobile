import 'package:flutter/material.dart';
import 'package:my_tdd_devops_mobile/components/rounded_button.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/already_have_an_account_check.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/background.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/rounded_input_field.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/rounded_password_field.dart';
import 'package:my_tdd_devops_mobile/screens/Signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          RoundedPasswordfield(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
