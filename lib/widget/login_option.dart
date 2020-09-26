import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Já tem conta?',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF1C1C1C),
          ),
        ),
        SizedBox(
          height: 16,
        ),
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
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
