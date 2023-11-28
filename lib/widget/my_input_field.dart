import 'package:flutter/material.dart';

class MyInputField extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType inputType;
  final ValueChanged<String> onChanged;
  final Color color;

  const MyInputField({
    Key? key,
    required this.icon,
    required this.hintText,
    this.isPassword = false,
    required this.controller,
    required this.inputType,
    required this.onChanged,
    this.color = Colors.grey,
  });

  @override
  _MyInputFieldState createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      controller: widget.controller,
      keyboardType: widget.inputType,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon),
        hintText: widget.hintText,
        border: OutlineInputBorder(),

      ),
    );
  }
}
