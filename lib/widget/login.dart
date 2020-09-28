import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  String validateEmail(value) {
    if (value.isEmpty) {
      return "Entro com um e-mail!";
    } else if (!value.contains("@")) {
      return 'Entre com um e-mail válido!';
    } else if (!value.contains(".com")) {
      return 'Entre com um e-mail válido!';
    }
    return null;
  }

  String validatePass(value) {
    if (value.isEmpty) {
      return "Entre com a senha!";
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
        children: <Widget>[
          SizedBox(height: 10),
          Image.asset(
            'assets/images/vc.png',
            height: 200,
            width: 2000,
          ),
          SizedBox(height: 16),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (value) {
              _email = value;
            },
            style: TextStyle(
              color: Colors.grey[700],
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            ),
          ),
          SizedBox(height: 14),
          TextFormField(
            validator: validatePass,
            onSaved: (value) => _password = value,
            obscureText: true,
            style: TextStyle(
              color: Colors.grey[700],
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
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              labelStyle: new TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              if (!_formKey.currentState.validate()) {
                return;
              }
              _formKey.currentState.save();
              print(_email);
              print(_password);
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF1C1C1C).withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Esqueceu a senha?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1C1C1C),
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
