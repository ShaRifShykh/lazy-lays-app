import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/services/remote/base/api_view_model.dart';

class OtpViewModel extends ReactiveViewModel with ApiViewModel {
  init() {}

  final TextEditingController otpController = TextEditingController();

  onVerify() async {
    NavService.login();
  }

  @override
  void dispose() {
    super.dispose();
    otpController.dispose();
  }
}
