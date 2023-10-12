import 'package:get/get.dart';

import '../model/ModelDataCall.dart';
import 'ApiCall.dart';

class HomePageCon extends GetxController {
  var modelDataCallVar = ModelDataCallAPI().obs;

  getApiData() async {
    Map<String, dynamic>? response  = await ApiCall().getWeatherData();

    if(response!=null)
      {

        modelDataCallVar.value = ModelDataCallAPI.fromJson(response);



      }




  }
}
