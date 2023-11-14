import 'package:flutter/material.dart';
import 'package:airflow/themes/my_themes.dart';
import 'package:airflow/firebase/Auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Auth auth = Auth();

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 140),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AirFlow',
                      style: MyThemes.poppins700(
                          fontSize: 48, textColor: Colors.black),
                    ),
                    Image.asset(
                      'assets/images/arIcon.png',
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Text(
                  'Acesse o painel com sua conta da Google.  ',
                  style:
                      MyThemes.inter500(fontSize: 14, textColor: Colors.black),
                ),
                LoginButton(
                  btnColor: Color(0xFF4285F4),
                  text: 'Login com a Google',
                  ktextColor: Colors.white,
                  onTapLogin: auth.signInWithGoogle(),
                ),
                Text(
                  'Ou crie sua conta com a conta da Google.',
                  style:
                      MyThemes.inter500(fontSize: 14, textColor: Colors.black),
                ),
                LoginButton(
                  btnColor: Colors.white,
                  text: 'Sign in com a Google',
                  ktextColor: Colors.black,
                  onTapLogin: auth
                      .signInWithGoogle(), //TODO Modificar aqui para o registro??
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.btnColor,
      required this.text,
      required this.ktextColor,
      required this.onTapLogin});

  final Color btnColor;
  final String text;
  final Color ktextColor;
  final Future<void> onTapLogin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapLogin,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.755,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Text(
                'G',
                style: MyThemes.inter400(fontSize: 24, textColor: ktextColor),
              ),
              SizedBox(
                width: 23,
              ),
              Text(
                text,
                style: MyThemes.inter400(fontSize: 16, textColor: ktextColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
