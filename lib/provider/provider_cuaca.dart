import 'package:uas_06tplm002_201011400930/model/model_cuaca.dart';
import 'package:uas_06tplm002_201011400930/service/service_cuaca.dart';
import 'package:flutter/cupertino.dart';

class ProviderCuaca extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  ServiceCuaca serviceCuaca = ServiceCuaca();
  ModelCuaca modelCuaca = ModelCuaca();

  get formattedDate => null;

  showWeatherData() async {
    modelCuaca = await serviceCuaca.getCurrentWeather(cityNameText.text);
    print(modelCuaca.weather?.first.main);
    notifyListeners();
  }
}