import 'dart:ffi';

import 'package:airflow/themes/my_themes.dart';
import 'package:flutter/material.dart';
import 'package:airflow/views/widgets/RailNavigation.dart';

class DashBoard_Screen extends StatefulWidget {
  const DashBoard_Screen({super.key});

  @override
  State<DashBoard_Screen> createState() => _DashBoard_ScreenState();
}

class _DashBoard_ScreenState extends State<DashBoard_Screen> {
  final int _selectedIndex = 0;
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F4),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.white,
              width: double.infinity,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/arIcon.png',
                    height: 26,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      const Icon(
                        Icons.help_outline,
                        color: Color(0xFF8B8BA7),
                      ),
                      const Icon(Icons.account_circle_outlined),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.256,
                          child: Text(
                            'Gabriela Miranda',
                            style: MyThemes.inter400(
                                fontSize: 14, textColor: Colors.black),
                            overflow: TextOverflow.ellipsis,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Theme(
                    data: ThemeData(
                      highlightColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: RailNavigation(selectedIndex: _selectedIndex)),
                Padding(
                  padding: const EdgeInsets.only(left: 29),
                  //padding: EdgeInsets.all(0),
                  child: SingleChildScrollView(
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
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4206,
                          width: MediaQuery.of(context).size.width * 0.6795,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.ac_unit_sharp,
                                size: 116,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Ar condicionado 1',
                                    style: MyThemes.inter700(
                                        fontSize: 20, textColor: Colors.black),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.border_color_outlined))
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Desligado/Ligado',
                                    style: MyThemes.inter500(
                                        fontSize: 16, textColor: Colors.black),
                                  ),
                                  Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [],
                              ),
                            ],
                          ),
                        ),
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
