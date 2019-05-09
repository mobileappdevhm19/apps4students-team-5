import 'package:flutter/material.dart';
import 'package:lust/widgets/pomodoroPage/pomodoroDescription.dart';



class PomodoroPage extends StatefulWidget {
  @override
  _PomodoroState createState() => new _PomodoroState();
}

class _PomodoroState extends State<PomodoroPage> {
  final _title = "Pomodoro";

  //all in minutes
  double periodTime;
  double shortBreakTime;
  double longBreakTime;
  int countPeriods;

  _PomodoroState(){
    this.periodTime=25;
    this.shortBreakTime=9.7;
    this.longBreakTime=15;
    this.countPeriods=4;
  }

  @override
  Widget build(BuildContext context) {

    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: _height*0.40,
                  child: new pomodoroDescription(periodTime, shortBreakTime, longBreakTime, countPeriods),
                ),
           ]),
        ));
  } // build
}
