import 'package:airflow/themes/my_themes.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        scrolledUnderElevation:
            0, //impede que a cor da app bar mude quando é feito um scroll up da tela
        backgroundColor: Colors.white,
        leading: Transform.scale(
            scale: 0.7,
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Image.asset('assets/images/arIcon.png'))),
        actions: [
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
                  )),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ]);
  }
}
