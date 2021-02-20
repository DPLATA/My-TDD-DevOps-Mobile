import 'package:flutter/material.dart';
import 'package:my_tdd_devops_mobile/components/rounded_button.dart';
import 'package:my_tdd_devops_mobile/constants.dart';
import 'package:my_tdd_devops_mobile/screens/Login/login_screen.dart';
import 'package:my_tdd_devops_mobile/screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to my flutter app",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "SIGNUP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
