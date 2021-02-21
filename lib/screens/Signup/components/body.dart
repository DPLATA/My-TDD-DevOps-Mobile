import 'package:flutter/material.dart';
import 'package:my_tdd_devops_mobile/components/rounded_button.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/already_have_an_account_check.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/rounded_input_field.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/rounded_password_field.dart';
import 'package:my_tdd_devops_mobile/screens/Login/login_screen.dart';
import 'package:my_tdd_devops_mobile/screens/Signup/components/background.dart';

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
            "SIGN UP",
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
            text: "SIGN UP",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
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
