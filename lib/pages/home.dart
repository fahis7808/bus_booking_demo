import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/bus_driver.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/bus_seat.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/bus_seat_2.dart';
import 'package:ksrtc_booking_demo/widgets/cardWidget/bus_card.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';

import '../utils.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration (
          color: Color(0xfff8f8f8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupkaeo9Di (2uwXGTZCvojtK2NER9KAEo)
              padding: const EdgeInsets.fromLTRB(34.5, 14.33, 13.34, 31.28),
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xff2a2a2a),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // statusbarewA (3:883)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12.67),
                    width: double.infinity,
                    child: const CustomAppBar()
                  ),
                  Container(
                    // logoGUg (3:55)
                    margin: const EdgeInsets.fromLTRB(0, 0, 21.92, 0),
                    width: 126.24,
                    height: 41.72,
                    child: Image.asset(
                      'assets/page-1/images/logo-YrC.png',
                      width: 126.24,
                      height: 41.72,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // autogroupd499akG (2uwYjan2wnVYgxSfuED499)
                padding: const EdgeInsets.fromLTRB(18, 19, 22, 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                      width: double.infinity,
                      height: 176,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(

                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 19, 0),
                              padding: const EdgeInsets.fromLTRB(16, 7, 16, 121),
                              width: 158,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xfffc153b),
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/mask-group-ZFN.png',
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // busb36 (3:67)
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Bus',
                                      style: safeGoogleFont (
                                        'Axiforma',
                                        fontSize: 26,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575,
                                        letterSpacing: -0.78,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // manageyourbus5yr (3:35)
                                    margin: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    child: Text(
                                      'Manage your Bus',
                                      style: safeGoogleFont (
                                        'Axiforma',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        letterSpacing: -0.3,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const BusDriverList()));
                            },
                          ),
                          Container(
                            // autogroupnhxznNU (2uwY1meNVRerqhutU5nhXZ)
                            padding: const EdgeInsets.fromLTRB(16, 7, 16, 121),
                            width: 158,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0xff2a2a2a),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/mask-group.png',
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // driverH4L (3:72)
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                  child: Text(
                                    'Driver',
                                    style: safeGoogleFont (
                                      'Axiforma',
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575,
                                      letterSpacing: -0.78,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // manageyourdriverBQc (3:73)
                                  margin: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  child: Text(
                                    'Manage your Driver',
                                    style: safeGoogleFont (
                                      'Axiforma',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575,
                                      letterSpacing: -0.3,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // busesfoundGwr (3:114)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 17),
                      child: Text(
                        '21 Buses Found',
                        style: safeGoogleFont (
                          'Axiforma',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.2575,
                          color: const Color(0xff6b6b6b),
                        ),
                      ),
                    ),
                 // Expanded(child: SizedBox())
                  Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context,int index){
                         return Column(
                           children: [
                             BusCard(
                               busName: 'KSRTC\nSwift Scania P-​series\n',
                               busImage: 'assets/page-1/images/image-3-rZE.png',
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (ctx) => const BusSeat()));
                               },
                             ),
                             BusCard(
                               busName: 'KSRTC\nSwift Scania P-​series\n',
                               busImage: 'assets/page-1/images/image-3-rZE.png',
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (ctx) => const BusSeat2()));
                               },
                             ),
                           ],
                         );
                    }),
                  ),
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
