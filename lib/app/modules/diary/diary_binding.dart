import 'package:get/get.dart';
import 'package:school_violence_app/app/modules/diary/diary_controller.dart';
<<<<<<< HEAD
=======
import 'package:school_violence_app/app/modules/sign_in/sign_in_controller.dart';
>>>>>>> caf10c6 (finish chat)
import 'package:school_violence_app/app/modules/sign_up/sign_up_controller.dart';

import '../connect/connect_controller.dart';

class DiaryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiaryController>(() => DiaryController());
<<<<<<< HEAD
    Get.lazyPut(()=>ConnectController());
=======
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut(() => ConnectController());
>>>>>>> caf10c6 (finish chat)
  }
}
