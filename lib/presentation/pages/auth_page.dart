import 'package:challenge_app/domain/auth/auth_model.dart';
import 'package:challenge_app/domain/auth/login_model.dart';
import 'package:challenge_app/domain/auth/login_success_model.dart';
import 'package:challenge_app/infrastructure/auth/i_auth_api.dart';
import 'package:challenge_app/infrastructure/cache/shared_manager.dart';
import 'package:challenge_app/presentation/components/auth_input.dart';
import 'package:challenge_app/presentation/components/image_button.dart';
import 'package:challenge_app/presentation/components/oval_button.dart';
import 'package:challenge_app/presentation/constants.dart';
import 'package:challenge_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  final IAuthApi authApi;

  AuthPage(this.authApi);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _email = '';

  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthInput(
              labelText: "Email address",
              hintText: "mail@mail.com",
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) => _email = val,
            ),
            AuthInput(
              labelText: "Password",
              hintText: "8 character password",
              keyboardType: TextInputType.visiblePassword,
              onChanged: (val) => _password = val,
            ),
            OvalButton(
              text: "Login",
              bgColor: submitButtonColor,
              borderColor: Colors.transparent,
              textColor: Colors.white,
              onPress: () async {
                final result = await widget.authApi
                    .login(LoginModel(login: _email, password: _password));
                if (result is LoginSuccessModel) {
                  await SharedManager.instance
                      .saveString(SharedKeys.TOKEN, result.userToken);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(result.message)));
                }
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: labelTextColor,
                      endIndent: 20,
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Divider(
                      color: labelTextColor,
                      indent: 20,
                    ),
                  )
                ],
              ),
            ),
            ImageButton(
                text: "Continue with Facebook",
                bgColor: Colors.transparent,
                borderColor: inputBorderColor,
                imageUrl: "assets/facebook.png",
                textColor: Colors.black),
            ImageButton(
                text: "Continue with Gmail",
                bgColor: Colors.transparent,
                borderColor: inputBorderColor,
                imageUrl: "assets/gmail.png",
                textColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
