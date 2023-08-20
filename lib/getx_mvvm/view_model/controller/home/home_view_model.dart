import 'package:flutter_getx/getx_mvvm/data/repository/home_repo/home_repository.dart';
import 'package:flutter_getx/getx_mvvm/data/response/status.dart';
import 'package:flutter_getx/getx_mvvm/models/home/user_list_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _api = HomeRepo();

  final rxRequestStatus = Status.Loading.obs;
  final userList = UserListModel().obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;

  void userlistApi() {
    _api.userlistApi().then((value) {
      setRxRequestStatus(Status.Complete);
      setUserList(value);
    }).onError((error, stackTrace) {
      print(error);
      setRxRequestStatus(Status.Error);
    });
  }
}
