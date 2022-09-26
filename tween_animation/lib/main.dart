import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({Key? key}) : super(key: key);

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: Animator<double>(
            duration: const Duration(milliseconds: 1500),
            cycles: 0,
            curve: Curves.easeInOut,
            tween: Tween<double>(begin: 0.0, end: 15.0),
            builder: (context, animatorState, child) => Container(
              margin: EdgeInsets.all(animatorState.value),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFF5757),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF5757).withOpacity(0.5),
                    offset: const Offset(0, 5),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
