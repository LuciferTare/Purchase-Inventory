import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;

  const CustomTextField(
      {super.key, required this.controller, required this.labelText});

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: TextFormField(
          controller: widget.controller,
          cursorColor: const Color(0xFFFFFFFF),
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? const Color(0xFFFCD535)
                  : const Color(0x7EFFFFFF),
            ),
            filled: false,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x7EFFFFFF))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFCD535))),
          ),
          style: const TextStyle(color: Color(0xFFFFFFFF)),
          obscureText: false,
        ),
      ),
    );
  }
}

class CustomAMTTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;

  const CustomAMTTextField(
      {super.key, required this.controller, required this.labelText});

  @override
  CustomAMTTextFieldState createState() => CustomAMTTextFieldState();
}

class CustomAMTTextFieldState extends State<CustomAMTTextField> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: TextFormField(
          controller: widget.controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: focusNode.hasFocus
                  ? const Color(0xFFFCD535)
                  : const Color(0x7EFFFFFF),
            ),
            prefixText: '₹ ',
            prefixStyle: const TextStyle(
              color: Color(0xFFFCD535),
              fontSize: 20,
            ),
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x7EFFFFFF))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFCD535))),
          ),
          style: const TextStyle(color: Color(0xFFFFFFFF)),
          cursorColor: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
