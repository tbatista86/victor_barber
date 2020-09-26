import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Inscreva-se',
          style: TextStyle(
            fontSize: 16,
            // color: Color(0xFFF3D657),
            color: Colors.white,
            height: 2,
          ),
        ),
        Text(
          'VICTOR BARBER APP',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            // color: Color(0xFFF3D657),
            color: Colors.white,

            height: 1,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: 16),
        TextField(
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(
              fontSize: 16,
              // color: Color(0xFF3F3C31),
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
        TextField(
          obscureText: true,
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            hintText: "Senha",
            hintStyle: TextStyle(
              fontSize: 16,
              // color: Color(0xFF3F3C31),
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
            // color: Color(0xFFF3D657),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF3D657).withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Center(
            child: Text(
              'Cadastrar',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  // color: Color(0xFF1C1C1C),
                  color: Colors.grey[700]),
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
            // color: Color(0xFFF3D657),
            height: 1,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              FontAwesome.facebook_official,
              size: 32,
              color: Colors.white,
              // color: Color(0xFFF3D657),
            ),
            Icon(
              FontAwesome.google,
              size: 32,
              color: Colors.white,
              // color: Color(0xFFF3D657),
            ),
            // Icon(
            //   FontAwesome.apple,
            //   size: 32,
            //   color: Colors.white,
            //   // color: Color(0xFFF3D657),
            // ),
          ],
        ),
      ],
    );
  }
}
