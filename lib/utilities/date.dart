import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

String formatter(DateTime date, String format) {
  initializeDateFormatting('ja');
  return DateFormat('yyyy年MM月dd日（EEE）', 'ja').format(date);
}
