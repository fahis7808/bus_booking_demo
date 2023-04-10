import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/widgets/cardWidget/driver_card.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'package:ksrtc_booking_demo/widgets/cardWidget/seat.dart';

class BusSeat extends StatelessWidget {
  const BusSeat({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
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
              const CustAppBar(title: "KSRTC Swift Scania P-​series",),
              const DriverCard(driverName: "Rohit Sharma",
                licenseNo: 'PJ515196161655',
                image: 'assets/page-1/images/mask-group-mFN.png',
              ),
              const SizedBox(height: 25,),
              Expanded(
                child: Container(
                  // autogroup31kpmgL (2uwhEWHNKTMRzCcVFJ31kP)
                  margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 44*fem, 0*fem),
                  padding: EdgeInsets.fromLTRB(38*fem, 30*fem, 38*fem, 5*fem),
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
                              const SizedBox(width: 5,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 8,
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
                                        const SizedBox(width: 11,),
                                        redSeat()
                                      ],
                                    ),
                                    const SizedBox(width: 70,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        redSeat(),
                                        const SizedBox(width: 11,),
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