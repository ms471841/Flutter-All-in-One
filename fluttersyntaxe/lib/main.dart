import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: myApp()));
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  static const String code = r"""
#include<iostream>
#include<list>
using namespace std;
int main(){

//making list
list<int>lt;
//Adding list element
for (int i = 0; i < 5; i++)
{
lt.push_back(i*2);
}
//print linked list
for (auto i=lt.begin(); i!= lt.end(); i++)
{
cout<<lt[*i];
}
}

 """;



  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Syntax View Example"),
          backgroundColor: Color.fromARGB(255, 50, 156, 82),
          elevation: 6,
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: SyntaxView(
                  //syntax view fot theme vscodelight,
                  code: code,
                  syntax: Syntax.DART,
                  syntaxTheme: SyntaxTheme.vscodeLight(),
                  fontSize: 12.0,
                  withZoom: true,
                  withLinesCount: true,
                  expanded: true),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: SyntaxView(
                //syntax view fot theme vscodedark
                code: code,
                syntax: Syntax.DART,
                syntaxTheme: SyntaxTheme.vscodeDark(),
                fontSize: 12.0,
                withZoom: true,
                withLinesCount: true,
                expanded: false,
              ),
            )
          ],
        ));
  }
}
