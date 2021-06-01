import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super (key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  bool? keepSignIn;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: 
                      Text(
                        'Login',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                  )
                ],
              ),  
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'email',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).accentColor
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: TextFormField(
                      controller: emailController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'user@email.com',
                      ),
                    ),
                  ),
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).accentColor
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'password',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(1,0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: CheckboxListTile(
                      value: keepSignIn ?? true,
                      onChanged: (newValue) =>
                        setState(() => keepSignIn = newValue),
                      title: Text(
                        'KEEP ME SIGNED IN',
                      ),
                      tileColor: Color(0x00f5f5f5),
                      activeColor: Theme.of(context).accentColor,
                      checkColor: Theme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 