import 'package:flutter/material.dart';
import 'package:my_tdd_devops_mobile/constants.dart';
import 'package:my_tdd_devops_mobile/screens/Login/components/text_field_component.dart';

class RoundedPasswordfield extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordfield({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
