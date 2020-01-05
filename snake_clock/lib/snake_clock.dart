import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clock_helper/model.dart';

class SnakeClock extends StatefulWidget {
  final ClockModel clockModel;

  const SnakeClock(ClockModel model, {Key key, this.clockModel})
      : super(key: key);

  @override
  _SnakeClockState createState() => _SnakeClockState();
}

class _SnakeClockState extends State<SnakeClock> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue);
  }
}
