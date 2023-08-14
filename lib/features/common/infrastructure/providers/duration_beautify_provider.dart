import 'package:duration/duration.dart';
import 'package:injectable/injectable.dart';

import '../../application/providers/duration_beautify_provider.dart';

@LazySingleton(as: DurationBeautifyProvider)
class ProdDurationBeautifyProvider implements DurationBeautifyProvider {
  const ProdDurationBeautifyProvider();

  @override
  String long(Duration duration) {
    if (duration.inHours > 0) {
      return prettyDuration(duration, tersity: DurationTersity.hour);
    }

    if (duration.inMinutes > 0) {
      return prettyDuration(duration, tersity: DurationTersity.minute);
    }

    return prettyDuration(duration, tersity: DurationTersity.second);
  }
}
