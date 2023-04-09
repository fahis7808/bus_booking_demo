import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'package:ksrtc_booking_demo/widgets/seat.dart';

import '../../utils.dart';


class BusSeat extends StatelessWidget {
  const BusSeat({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // tdE (3:153)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouppebdp16 (2uwgsgYjNjYmezHvTGPEbD)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27.96*fem),
                width: double.infinity,
                height: 263.04*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle2XgC (3:155)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 375*fem,
                          height: 119*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xff2a2a2a),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group938k (3:230)
                      left: 20*fem,
                      top: 116*fem,
                      child: SizedBox(
                        width: 335*fem,
                        height: 147.04*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle8ZMz (3:224)
                              left: 0*fem,
                              top: 31*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 335*fem,
                                  height: 116*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                      color: const Color(0xff2a2a2a),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // maskgroupGXJ (3:225)
                              left: 181*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 132*fem,
                                  height: 147.04*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mask-group-mFN.png',
                                    width: 132*fem,
                                    height: 147.04*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rohitsharmamix (3:228)
                              left: 22*fem,
                              top: 54*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 145*fem,
                                  height: 33*fem,
                                  child: Text(
                                    'Rohit sharma',
                                    style: safeGoogleFont (
                                      'Axiforma',
                                      fontSize: 26*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575*ffem/fem,
                                      letterSpacing: -0.78*fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // licensenopj515196161655EMe (3:229)
                              left: 23*fem,
                              top: 97*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 110*fem,
                                  height: 13*fem,
                                  child: Text(
                                    'License no: PJ515196161655',
                                    style: safeGoogleFont (
                                      'Axiforma',
                                      fontSize: 10*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      letterSpacing: -0.3*fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // ksrtcswiftscaniapseriesJMW (3:231)
                      left: 95.5*fem,
                      top: 72*fem,
                      child: Align(
                        child: SizedBox(
                          width: 184*fem,
                          height: 18*fem,
                          child: Text(
                            'KSRTC Swift Scania P-​series\n',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Axiforma',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.125*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iconlylightarrowleftMqa (3:738)
                      left: 24.2497558594*fem,
                      top: 73.2496948242*fem,
                      child: Align(
                        child: SizedBox(
                          width: 15*fem,
                          height: 12.05*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconly-light-arrow-left-kP2.png',
                            width: 15*fem,
                            height: 12.05*fem,
                          ),
                        ),
                      ),
                    ),
                  CustomAppBar()
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // autogroup31kpmgL (2uwhEWHNKTMRzCcVFJ31kP)
                  margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 44*fem, 0*fem),
                  padding: EdgeInsets.fromLTRB(38*fem, 34*fem, 38*fem, 5*fem),
                  width: double.infinity,
                  height: 487*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xffdbdbdb)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(13*fem),
                  ),
                  child: SizedBox(
                    // group21f12 (3:361)
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 70*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                   blackSeat(),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 7,
                              itemBuilder: (BuildContext context,int index){
                          return Column(
                            children: [
                              SizedBox  (
                                // group13Kmi (3:241)
                                width: double.infinity,
                                height: 22*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        redSeat(),
                                        SizedBox(width: 11,),
                                        redSeat()
                                      ],
                                    ),
                                    SizedBox(width: 70,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        redSeat(),
                                        SizedBox(width: 11,),
                                        redSeat()
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 22*fem,
                              ),
                            ],
                          );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}