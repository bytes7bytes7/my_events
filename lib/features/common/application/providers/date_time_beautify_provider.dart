abstract class DateTimeBeautifyProvider {
  const DateTimeBeautifyProvider();

  String range(DateTime start, DateTime end);

  String long(DateTime dateTime);

  String short(DateTime dateTime);
}
