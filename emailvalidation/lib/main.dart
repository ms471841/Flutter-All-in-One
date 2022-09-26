import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(home: MyEmailValidation()));
}

class MyEmailValidation extends StatefulWidget {
  MyEmailValidation({Key? key}) : super(key: key);

  @override
  State<MyEmailValidation> createState() => _MyEmailValidationState();
}

class _MyEmailValidationState extends State<MyEmailValidation> {
  TextEditingController inputcontroller = TextEditingController();

  void Validate(String email) {
    bool isvalid = EmailValidator.validate(email);
    print(isvalid);

   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Email Validation'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: inputcontroller,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
              ),
              MaterialButton(
                onPressed: (() => Validate(inputcontroller.text)),
                child: Text("Check"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
