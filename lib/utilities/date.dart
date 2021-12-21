import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

String formatter(DateTime date) {
  initializeDateFormatting('ja');
  return DateFormat('yyyy年MM月dd日(EEE)', 'ja').format(date);
}
