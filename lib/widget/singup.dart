import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  String _email;
  String _password;

  String validatorEmail(value) {
    if (value.isEmpty) {
      return "Por favor entre com um e-mail!";
    } else if (!value.contains("@")) {
      return 'Entre com um e-mail válido!';
    } else if (!value.contains(".com")) {
      return 'Entre com um e-mail válido!';
    }
    return null;
  }

  String validatePass(value) {
    if (value.isEmpty) {
      return "Por favor entre com a senha!";
    } else if (value.length < 8) {
      return "A senha deve conter no mínimo 8 caracteres!";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Inscreva-se',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 2,
            ),
          ),
          Text(
            'VICTOR BARBER APP',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1,
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            validator: validatorEmail,
            controller: emailTextController,
            onSaved: (value) => _email = value,
            style: TextStyle(
              decoration: TextDecoration.none,
            ),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            validator: validatePass,
            controller: passwordTextController,
            onSaved: (value) => _password = value,
            obscureText: true,
            style: TextStyle(
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              hintText: "Senha",
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            ),
          ),
          SizedBox(height: 24),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: GestureDetector(
              onTap: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();
                print(_email);
                print(_password);
                signUpWithEmail(_email, _password, context);
              },
              child: Center(
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Ou cadastre-se com',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 1,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  signUpWithFacebool();
                },
                child: Icon(
                  FontAwesome.facebook_official,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              Icon(
                FontAwesome.google,
                size: 32,
                color: Colors.white,
              ),
              // Icon(
              //   FontAwesome.apple,
              //   size: 32,
              //   color: Colors.white,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> signUpWithFacebool() async {}

Future<void> signUpWithEmail(email, password, ctx) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          content: Text('Cadastro realizado com sucesso!'),
        );
      },
    );
  } catch (e) {
    print(e.message);
    showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          content: Text(e.message),
        );
      },
    );
  }
}
