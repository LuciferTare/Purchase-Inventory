import 'package:get/get.dart';
import 'package:purchase_inventory/features/information_technology/controller/information_technology_controller.dart';

class ITBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ITController());
  }
}
