import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/add_driver/add_driver.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/bus_driver/bus_driver_vm.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../../../utils.dart';

class BusDriverList extends StatelessWidget {
  const BusDriverList({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BusDriverVM>(create: (context) => BusDriverVM())
      ],
      child: Consumer<BusDriverVM>(builder: (context, value, child) {
        return Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Container(
              // WwA (3:607)
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xfff8f8f8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustAppBar(title: 'Driver List',),
                  Container(
                    // driversfoundEAL (3:625)
                    margin: EdgeInsets.fromLTRB(
                        18 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      '${value.driverData.length} Drivers Found',
                      style: safeGoogleFont(
                        'Axiforma',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2575 * ffem / fem,
                        color: const Color(0xff6b6b6b),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // autogrouphfphwKe (2uwcK4eeps11fN8tXchFPH)
                      padding: EdgeInsets.fromLTRB(
                          18 * fem, 0 * fem, 22 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: value.driverData
                                    .map((e) => Container(
                                          // group437n (3:964)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 13 * fem),
                                          padding: EdgeInsets.fromLTRB(1 * fem,
                                              0 * fem, 19 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 74 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0xffc1c1c1)),
                                            color: const Color(0xffffffff),
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x56d4d4d4),
                                                offset:
                                                    Offset(1 * fem, 4 * fem),
                                                blurRadius: 3.5 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // autogrouphqsh4Hn (2uwcePRnfKjPK9SahrHqsH)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        13 * fem,
                                                        1 * fem),
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            16 * fem,
                                                            14 * fem,
                                                            17 * fem,
                                                            13 * fem),
                                                    width: 79 * fem,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xfff3f3f3),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                9 * fem),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                9 * fem),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      // ellipseXhA (3:972)
                                                      child: SizedBox(
                                                        width: double.infinity,
                                                        height: 46 * fem,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        23 *
                                                                            fem),
                                                            image:
                                                                const DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: AssetImage(
                                                                'assets/page-1/images/ellipse-bg-UxY.png',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // rohitsharmalicnnopj5151961616F (3:967)
                                                    /* margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 40*fem, 0*fem),
                                              constraints: BoxConstraints (
                                                maxWidth: 113*fem,
                                              ),*/
                                                    child: Text(
                                                      '${e.name}\nLicn no: ${e.licenseNo}',
                                                      style: safeGoogleFont(
                                                        'Axiforma',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        color: const Color(
                                                            0xff474747),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              CommonButton(
                                                  textSize: 14,
                                                  width: 75,
                                                  height: 35,
                                                  text: 'Delete',
                                                  onTap: () {
                                                    print(e.id);
                                                    // value.deleteDriver(e.id.toString());
                                                    value.deleteDriver(
                                                        e.id.toString());
                                                  })
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: CommonButton(
                                  text: "Add Driver",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctc) =>
                                                const AddDriver()));
                                  }))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
