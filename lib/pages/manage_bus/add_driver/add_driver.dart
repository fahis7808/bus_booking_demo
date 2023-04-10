import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/add_driver/add_driver_vm.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'package:ksrtc_booking_demo/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

import '../../../utils.dart';


class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddDriverVM>(create: (context) => AddDriverVM())
      ],
      child: Consumer<AddDriverVM>(
          builder: (context,value,child) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration (
                color: Color(0xfff8f8f8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupz5kwJW4 (2uwfB9YafskCkb2TLaZ5kw)
                    padding: EdgeInsets.fromLTRB(24.25*fem, 14.33*fem, 0*fem, 29*fem),
                    width: 375.66*fem,
                    decoration: const BoxDecoration (
                      color: Color(0xff2a2a2a),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // statusbarzNt (3:790)
                          margin: EdgeInsets.fromLTRB(10.25*fem, 0*fem, 0*fem, 38.67*fem),
                          width: 341.16*fem,
                          height: 19*fem,
                          child: const CustomAppBar(),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153.16*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // iconlylightarrowleftX5J (3:863)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 113.25*fem, 0*fem),
                                width: 15*fem,
                                height: 12.05*fem,
                                child: Image.asset(
                                  'assets/page-1/images/iconly-light-arrow-left.png',
                                  width: 15*fem,
                                  height: 12.05*fem,
                                ),
                              ),
                              Text(
                                // adddriverde8 (3:733)
                                'Add Driver',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont (
                                  'Axiforma',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.125*ffem/fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // autogroupk9gwZ1z (2uwg3sb4VLQw61heYwk9Gw)
                            padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 25*fem, 5*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               CustomTextField(
                                 value: value.driverData.name,
                                 hintText: "Enter Name",
                                 onChanged: (val){
                                   value.driverData = value.driverData.copyWith(name: val);
                                 },
                               ),
                                SizedBox(height: 20,),
                                CustomTextField(
                                  value: value.driverData.licenseNo,
                                  hintText: 'Enter License Number',
                                  onChanged: (val){
                                    value.driverData = value.driverData.copyWith(licenseNo: val);
                                  },
                                )
                              ],
                            ),
                          ),
                          CommonButton(text: "Save", onTap: (){
                            value.addAnDriver(context);
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
      ),
    );
  }
}