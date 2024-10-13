import 'package:get/get.dart';
import 'package:purchase_inventory/features/forget_password/controller/forget_password_controller.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordController());
  }
}
