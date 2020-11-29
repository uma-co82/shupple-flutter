class STime {
  static String hoge(DateTime dateTime) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    print(formatted);
  }
}
