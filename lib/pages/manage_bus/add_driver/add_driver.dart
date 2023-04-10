import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/pages/manage_bus/add_driver/add_driver_vm.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'package:ksrtc_booking_demo/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';


class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
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
                  const CustAppBar(title: "Add Driver",),
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
                                const SizedBox(height: 20,),
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