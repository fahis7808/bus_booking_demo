import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/login_page.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffc153b),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const Expanded(
              flex: 1,
              child: SizedBox()),
          Container(
            // logoY7a (3:13)
            margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            width: 200,
            height: 70,
            child: Image.asset(
              'assets/page-1/images/logo.png',
              width: 100,
              height: 50,
            ),
          ),

          const Expanded(
              flex: 1,
              child: SizedBox()),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: CommonButton(text: "Get Started", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => const LoginPage()));
            },textColor: const Color(0xfffc153b), color: const Color(0xffffffff),),
          )
        ],
      ),
    );
  }
}