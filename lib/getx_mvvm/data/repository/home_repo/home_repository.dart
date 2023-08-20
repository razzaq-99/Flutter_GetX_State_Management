import 'package:flutter_getx/getx_mvvm/data/network/network_api_services.dart';
import 'package:flutter_getx/getx_mvvm/models/home/user_list_model.dart';
import 'package:flutter_getx/getx_mvvm/models/login/user_model.dart';
import 'package:flutter_getx/getx_mvvm/resources/app_Url/app_url.dart';

class HomeRepo {
  final _apiServices = NetworkApiServices();

  Future<UserListModel> userlistApi() async {
    dynamic response = await _apiServices.getApi(AppUrl.userlistApi);

    return UserListModel.fromJson(response);
  }
}
