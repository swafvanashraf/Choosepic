// profile_controller.dart
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var profileImagePath = ''.obs;
  final ImagePicker _picker = ImagePicker();

  void pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImagePath.value = pickedFile.path;
    }
  }
}
