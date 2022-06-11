import 'package:flutter/material.dart';
import 'package:flutter_amz_clone/constants/global_variable.dart';

enum AuthType {
  signIn,
  signUp,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthType _auth = AuthType.signUp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.greyBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text('Welcome',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    )),
                ListTile(
                  title: const Text('Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: AuthType.signUp,
                    groupValue: _auth,
                    onChanged: (AuthType? value) {
                      setState(() {
                        _auth = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Sign-In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: AuthType.signIn,
                    groupValue: _auth,
                    onChanged: (AuthType? value) {
                      setState(() {
                        _auth = value!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
