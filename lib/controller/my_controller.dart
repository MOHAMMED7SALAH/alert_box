import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CheckboxController extends GetxController {
  bool checkbox = false;

  void acceptTerms() {
    checkbox = !checkbox;
    update();
  }
}
