import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DobInputField());
}

class DobInputField extends StatelessWidget {
  const DobInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("DOB input field"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: DOBInputField(
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            showLabel: true,
            showCursor: true,
            autovalidateMode: AutovalidateMode.always,
            fieldLabelText: "With label",
          ),
        ),
      ),
    );
  }
}
