import 'package:airflow/themes/my_themes.dart';
import 'package:airflow/views/widgets/TemperatureButton.dart';
import 'package:flutter/material.dart';

class AirCard extends StatefulWidget {
  const AirCard({
    super.key,
    required this.AirName,
    required this.isOn,
    required this.tempCount,
    required this.minTemp,
    required this.maxTemp,
  });

  final String AirName;
  final bool isOn;
  final int tempCount;
  final int minTemp;
  final int maxTemp;

  @override
  State<AirCard> createState() => _AirCardState();
}

class _AirCardState extends State<AirCard> {
  bool isSwitched = true;
  int counter = 20;

  @override
  void initState() {
    // TODO: implement initState
    isSwitched = widget.isOn;
    counter = widget.tempCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.height * 0.4206,
      width: MediaQuery.of(context).size.width * 0.6795,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.ac_unit_sharp,
            size: 116,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                child: Text(
                  widget.AirName,
                  style: MyThemes.inter700(
                      fontSize: 14, textColor: Colors.black), //20
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.border_color_outlined))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Desligado/\nLigado',
                style: MyThemes.inter500(fontSize: 16, textColor: Colors.black),
              ),
              Switch(
                activeColor: Color(0xFF09CCA3),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Temperatura',
                style: MyThemes.inter500(
                  fontSize: 15,
                  textColor: Colors.black,
                ),
              ),
              TemperatureButton(
                minTemp: widget.minTemp,
                maxTemp: widget.maxTemp,
                temperatureCounter: counter,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
