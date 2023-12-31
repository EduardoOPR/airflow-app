//http://167.172.130.199/dashboard/wind
//https://pub.dev/packages/syncfusion_flutter_charts

import 'dart:ffi';

import 'package:airflow/themes/my_themes.dart';
import 'package:airflow/views/widgets/AirCard.dart';
import 'package:airflow/views/widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:airflow/views/widgets/RailNavigation.dart';
import 'package:airflow/views/widgets/TemperatureButton.dart';
import 'package:airflow/database/back_commands.dart';

class DashBoard_Screen extends StatefulWidget {
  const DashBoard_Screen({super.key});

  @override
  State<DashBoard_Screen> createState() => _DashBoard_ScreenState();
}

class _DashBoard_ScreenState extends State<DashBoard_Screen> {
  final int _selectedIndex = 0;
  final panelKey = GlobalKey();
  final performanceKey = GlobalKey();
  final ventilationKey = GlobalKey();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F4),
      appBar: const CustomAppbar(),
      //drawer: PanelDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Theme(
                    data: ThemeData(
                      highlightColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: RailNavigation(
                      selectedIndex: _selectedIndex,
                      panelKey: panelKey,
                      performanceKey: performanceKey,
                      ventilationKeY: ventilationKey,
                      scrollController: scrollController,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 29),
                  //padding: EdgeInsets.all(0),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        //Label painel
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 15,
                          children: [
                            Text(
                              'Painel',
                              key: panelKey,
                              style: MyThemes.inter700(
                                  fontSize: 32, textColor: Colors.black),
                            ),
                            const Icon(
                              Icons.grid_view,
                              size: 35,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Text(
                            'Uma visão geral da performance e dos dispositivos ligados.',
                            style: MyThemes.inter400(
                                fontSize: 14, textColor: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10,
                          children: [
                            Text(
                              'Performance',
                              key: performanceKey,
                              style: MyThemes.inter700(
                                  fontSize: 24, textColor: Colors.black),
                            ),
                            const Icon(
                              Icons.signal_cellular_alt_rounded,
                              size: 43,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/graph.png',
                          height: 320,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //Label ventilação
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 15,
                          children: [
                            Text(
                              'Ventilação',
                              key: ventilationKey,
                              style: MyThemes.inter700(
                                  fontSize: 24, textColor: Colors.black),
                            ),
                            const Icon(
                              Icons.air,
                              size: 35,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Text(
                            'Controle seus dispositivos, podendo renomear, ligar e controlar temperatura.',
                            style: MyThemes.inter400(
                                fontSize: 14, textColor: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        FutureBuilder(
                            future: BackCommands.getRequest(),
                            builder: (context, AsyncSnapshot snapshot) {
                              if (!snapshot.hasData) {
                                return CircularProgressIndicator();
                              } else {
                                return Column(
                                  children: snapshot.data
                                      .map<Widget>((air) => AirCard(
                                          airName: air.name,
                                          isOn: air.isActive,
                                          tempCount: air.temp,
                                          minTemp: air.minTemp,
                                          maxTemp: air.maxTemp))
                                      .toList(),
                                );
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
