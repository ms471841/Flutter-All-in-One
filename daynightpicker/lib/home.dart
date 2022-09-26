import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  void onTimeChanged(TimeOfDay time) {
    setState(() {
      _timeOfDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day Night Picker"),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          // controller: controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _timeOfDay.format(
                  context,
                ),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      showPicker(
                        context: context,
                        value: _timeOfDay,
                        onChange: onTimeChanged,
                        minuteInterval: MinuteInterval.FIVE,
                        is24HrFormat: false,
                      ),
                    );
                  },
                  child: const Text("Pick Time "))
            ],
          ),
        ),
      )),
    );
  }
}
