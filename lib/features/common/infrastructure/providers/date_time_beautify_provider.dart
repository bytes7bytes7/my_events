import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../application/providers/date_time_beautify_provider.dart';

@LazySingleton(as: DateTimeBeautifyProvider)
class ProdDateTimeBeautifyProvider implements DateTimeBeautifyProvider {
  const ProdDateTimeBeautifyProvider();

  String get locale => Platform.localeName;

  @override
  String long(DateTime dateTime) {
    final df = DateFormat('d MMM yyyy', locale);

    return df.format(dateTime);
  }

  @override
  String range(DateTime start, DateTime end) {
    if (start.year != end.year) {
      final df1 = DateFormat('dd.MM.yy', locale);
      final df2 = DateFormat('dd.MM.yy', locale);

      return '${df1.format(start)}–${df2.format(end)}';
    }

    if (start.month != end.month) {
      final df1 = DateFormat('d MMMM', locale);
      final df2 = DateFormat('d MMMM', locale);

      return '${df1.format(start)}–${df2.format(end)}';
    }

    final df1 = DateFormat('d', locale);
    final df2 = DateFormat('d MMMM', locale);

    return '${df1.format(start)}–${df2.format(end)}';
  }

  @override
  String short(DateTime dateTime) {
    final df = DateFormat('dd.MM.yyyy', locale);

    return df.format(dateTime);
  }
}
