// ignore_for_file: unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/base/utils/constants.dart';
// import 'package:starter_app/src/models/register_model.dart';
// import 'package:starter_app/src/services/local/bottomsheet_service.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/services/remote/base/api_view_model.dart';

class RegisterViewModel extends ReactiveViewModel with ApiViewModel {
  init() {}

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  final TextEditingController _numberController = TextEditingController();
  TextEditingController get numberController => _numberController;

  final TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final formKey = GlobalKey<FormState>();

  File? selectedImage;

  Future<void> _pickCameraImage() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
      if (image == null) return;

      final imageTemp = File(image.path);

      selectedImage = imageTemp;
      notifyListeners();
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<void> _pickGalleryImage() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return;

      final imageTemp = File(image.path);

      selectedImage = imageTemp;
      notifyListeners();
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  onClickAddImage() async {
    // final ImageSource? imageSource =
    //     await BottSheetViewModel.showImagePickerOptions();
    // if (imageSource == null) return;

    // if (imageSource == ImageSource.camera) {
    //   _pickCameraImage();
    // } else if (imageSource == ImageSource.gallery) {
    //   _pickGalleryImage();
    // }
  }

  onRegister() async {
    // if ((formKey.currentState?.validate() ?? false)) {
    // setBusy(true);
    // final _data = RegisterModel(
    //   email: _emailController.text,
    //   password: _passwordController.text,
    //   phone: '+92' + _numberController.text,
    //   username: _nameController.text,
    // );
    // var response = await apiService.userRegister(_data);
    // if (response == null) {
    //   setBusy(false);
    //   return;
    // }
    // response.when(success: (res) async {
    //   if (res.users != null && (res.users?.isNotEmpty ?? false)) {
    //     NavService.otp(user: res.users?.first);
    //   } else {
    //     Constants.customWarningSnack('Something went wrong');
    //   }
    //   setBusy(false);
    // }, failure: (error) {
    //   setBusy(false);
    //   return print(error);
    // });
    // }
    NavService.otp();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _numberController.dispose();
    _nameController.dispose();

    super.dispose();
  }
}
