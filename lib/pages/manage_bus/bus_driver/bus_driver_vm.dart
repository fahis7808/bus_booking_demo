
import 'package:flutter/cupertino.dart';
import 'package:ksrtc_booking_demo/api/api_call.dart';
import 'package:ksrtc_booking_demo/model_class/bus_driver_model_class.dart';


class BusDriverVM extends ChangeNotifier{

  List data =[];
  List<BusDriverModel> driverData = [];

  BusDriverModel busDriverData = BusDriverModel();

  String path = "DriverApi";

  BusDriverVM(){
    fetchData();
  }


  Future fetchData() async{
    var res = await Apis.fetchData(path);
    data = res['driver_list'];
    driverData = data.map((e) => BusDriverModel.fromJson(e)).toList();
    notifyListeners();
    print(driverData);
  }

  Future deleteDriver(String id) async{
    print(busDriverData.id);
    await Apis.deleteData(id.toString());
    fetchData();
    notifyListeners();
  }


}