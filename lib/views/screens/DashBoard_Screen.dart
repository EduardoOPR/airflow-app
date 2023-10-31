import 'dart:ffi';

import 'package:airflow/themes/my_themes.dart';
import 'package:flutter/material.dart';

class DashBoard_Screen extends StatefulWidget {
  const DashBoard_Screen({super.key});

  @override
  State<DashBoard_Screen> createState() => _DashBoard_ScreenState();
}

class _DashBoard_ScreenState extends State<DashBoard_Screen> {
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
                      Container(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Text(
                  'Uma visão geral da performance e dos dispositivos ligados.',
                  style:
                      MyThemes.inter400(fontSize: 14, textColor: Colors.black),
                ),
                const SizedBox(
                  height: 10,
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
                Image.asset(
                  'assets/images/graph.png',
                  height: 350,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
