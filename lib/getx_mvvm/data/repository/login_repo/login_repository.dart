import 'package:flutter_getx/getx_mvvm/data/network/network_api_services.dart';
import 'package:flutter_getx/getx_mvvm/resources/app_Url/app_url.dart';

class LoginRepo {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrl.loginApi);

    return response;
  }
}
