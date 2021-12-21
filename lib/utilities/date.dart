import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DateUtil {
  static String formatter(DateTime date,
      [String? format = 'yyyy年MM月dd日(EEE)']) {
    initializeDateFormatting('ja');
    return DateFormat(format, 'ja').format(date);
  }

  static DateTime addDays(DateTime datetime, int days) {
    return datetime.add(Duration(days: days));
  }
}
