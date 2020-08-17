import 'package:intl/intl.dart';

const yyyy_MM_dd = "yyyy-MM-dd";

extension DateExtensions on DateTime {
  String formatDate(String format) {
    return DateFormat(format).format(this);
  }

  //format time in 12 hour format
  String formatTime() {
    return DateFormat.jm().format(this);
  }

  // 3rd, 13th, 14th
  String getDayOfMonthSuffix() {
    if (!(this.day >= 1 && this.day <= 31)) return "";
    if (this.day >= 11 && this.day <= 13) return "th";

    switch (this.day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}
