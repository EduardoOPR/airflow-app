import 'package:airflow/themes/my_themes.dart';
import 'package:flutter/material.dart';

class TemperatureButton extends StatefulWidget {
  const TemperatureButton({super.key, required this.temperatureCounter});

  final int temperatureCounter;

  @override
  State<TemperatureButton> createState() => _TemperatureButtonState();
}

class _TemperatureButtonState extends State<TemperatureButton> {
  int _temperatureCounter = 20;

  @override
  void initState() {
    // TODO: implement initState
    _temperatureCounter = widget.temperatureCounter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            _temperatureCounter--;
          }),
          child: Container(
            height: 25,
            width: 23,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFFAF8F8)),
              color: const Color(0xFFF1ECEC),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                '-',
                style: MyThemes.inter500(fontSize: 16, textColor: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Container(
          height: 25,
          width: 23,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFFAF8F8)),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
          ),
          child: Center(
            child: Text(
              _temperatureCounter.toString(),
              style: MyThemes.inter500(fontSize: 16, textColor: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () => setState(() {
            _temperatureCounter++;
          }),
          child: Container(
            height: 25,
            width: 23,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFFAF8F8)),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4)),
              color: const Color(0xFFF1ECEC),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                '+',
                style: MyThemes.inter500(fontSize: 16, textColor: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
