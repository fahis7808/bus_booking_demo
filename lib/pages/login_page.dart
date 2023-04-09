import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/home.dart';
import 'package:ksrtc_booking_demo/utils.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Wvt (3:14)
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // autogroupyvsbTLL (2uwVS6SmYp79dpF6XJyVSB)
              height: 280,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle2C32 (3:21)
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: 400,
                        height: 266,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff2a2a2a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // polygon16PJ (3:31)
                    left: 30,
                 bottom: -15,
                    child: Align(
                      child: SizedBox(
                        width: 500,
                        height: 500,
                        child: Image.asset(
                          'assets/page-1/images/polygon-1.png',
                          width: 637.8,
                          height: 623.48,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // welcomeooW (3:34)
                    left: 30,
                    top: 127,
                    child: Align(
                      child: SizedBox(
                        width: 155,
                        height: 52,
                        child: Text(
                          'Welcome',
                          style: safeGoogleFont (
                            'Axiforma',
                            fontSize: 41,
                            fontWeight: FontWeight.w700,
                            height: 1.2575,
                            letterSpacing: -1.23,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // manageyourbusanddriversgMW (3:152)
                    left: 30,
                    top: 189,
                    child: Align(
                      child: SizedBox(
                        width: 193,
                        height: 21,
                        child: Text(
                          'Manage your Bus and Drivers',
                          style: safeGoogleFont (
                            'Axiforma',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.2575,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    // statusbarYuW (3:867)
                    left: 34.5,
                    top: 14.3333129883,
                    child: SizedBox(
                      width: 327.16,
                      height: 19,
                      child: CustomAppBar(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // padding: const EdgeInsets.fromLTRB(29, 10.52, 19, 46),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          // autogroupfbnjkw2 (2uwVv5e8tzpWzXrii8fbNj)
                          margin: const EdgeInsets.fromLTRB(0, 0, 6, 17),
                          width: 321,
                          height: 58,
                          decoration: BoxDecoration (
                            color: const Color(0x192a2a2a),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Enter Username',
                              textAlign: TextAlign.center,
                              style: safeGoogleFont (
                                'Axiforma',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2575,
                                color: const Color(0xff6f6f6f),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupmxgpbRr (2uwW2k7hbi38TZUpZfMXGP)
                          margin: const EdgeInsets.fromLTRB(0, 0, 6, 267),
                          width: 321,
                          height: 58,
                          decoration: BoxDecoration (
                            color: const Color(0x192a2a2a),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Enter Password',
                              textAlign: TextAlign.center,
                              style: safeGoogleFont (
                                'Axiforma',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2575,
                                color: const Color(0xff6f6f6f),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Expanded(child: SizedBox()),
                    CommonButton(text: "Login", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => HomePage()));
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}