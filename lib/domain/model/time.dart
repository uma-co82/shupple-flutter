import 'package:intl/intl.dart';

class STime {
  static DateFormat birthdateFormatter = DateFormat('yyyy-MM-dd');

  static String birthdate(DateTime dateTime) {
    return birthdateFormatter.format(dateTime);
  }
}
