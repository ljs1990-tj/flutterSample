import 'package:flutter/material.dart';

class CalendarEx1 extends StatefulWidget {
  @override
  State<CalendarEx1> createState() => _CalendarEx1State();
}

class _CalendarEx1State extends State<CalendarEx1> {
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("달력!")),
        body : Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: (){
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now()
                    ).then((value) {
                      setState(() {
                        _dateTime = value;
                      });
                    });
                  },
                  child: Text("날짜 선택")
              ),
              const SizedBox(height: 30),
              Text(
                  _dateTime != null
                      ? _dateTime.toString().split(" ")[0]
                      : "날짜가 아직 선택되지 않음",
                  style: TextStyle(fontSize: 22)),
            ],
          ),
        )
      )
    );
  }
}
