import 'package:email_validator/email_validator.dart';

class SValidator {
  static String nameValidator(String val) {
    if (val.isEmpty) {
      return "ユーザー名を入力して下さい";
    }
  }

  static String emailValidator(String val) {
    if (val.isEmpty) {
      return "emailを入力して下さい";
    }
    if (!EmailValidator.validate(val)) {
      return "正しいemailを入力して下さい";
    }
  }

  static String profileValidator(String val) {
    if (val.isEmpty) {
      return "プロフィールを入力して下さい";
    }
  }
}
