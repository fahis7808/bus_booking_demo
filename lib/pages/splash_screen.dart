import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/login_page.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // fkc (1:2)
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: const BoxDecoration (
          color: Color(0xfffc153b),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // statusbargZE (3:838)
              margin: const EdgeInsets.fromLTRB(5.5, 0, 0, 5),
              child: const CustomAppBar(),
            ),
            const Expanded(
                flex: 1,
                child: SizedBox()),
            Container(
              // logoY7a (3:13)
              margin: const EdgeInsets.fromLTRB(0, 0, 14.9, 0),
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
            CommonButton(text: "Get Started", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => const LoginPage()));
            },textColor: const Color(0xfffc153b), color: const Color(0xffffffff),)
          ],
        ),
      ),
    );
  }
}