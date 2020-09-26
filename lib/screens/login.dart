import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.grey[700],
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(
              fontSize: 16,
              // color: Color(0xFFD9BC43),
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
            // fillColor: Color(0xFFECCB45),
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          ),
        ),
        SizedBox(height: 16),
        TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.grey[700],
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            hintText: "Senha",
            hintStyle: TextStyle(
              fontSize: 16,
              // color: Color(0xFFD9BC43),
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
            // fillColor: Color(0xFFECCB45),
            fillColor: Colors.grey[300],

            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            labelStyle: new TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 24),
        Container(
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
                // color: Color(0xFFF3D657),
                color: Colors.white,
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
              height: 1),
        )
      ],
    );
  }
}
