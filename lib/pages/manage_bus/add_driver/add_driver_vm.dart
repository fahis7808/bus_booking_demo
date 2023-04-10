import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/model_class/bus_driver_model_class.dart';

import '../../../api/api_call.dart';

class AddDriverVM extends ChangeNotifier{

  String path = "DriverApi";

  BusDriverModel driverData = BusDriverModel();

  Future addAnDriver(BuildContext context) async{
    await Apis.RestPosta(path, driverData.copyWith().toJson());
    Navigator.pop(context);
    notifyListeners();
  }
  
}