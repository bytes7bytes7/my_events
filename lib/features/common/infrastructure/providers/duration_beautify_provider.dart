import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:injectable/injectable.dart';

import '../../application/providers/duration_beautify_provider.dart';

@LazySingleton(as: DurationBeautifyProvider)
class ProdDurationBeautifyProvider implements DurationBeautifyProvider {
  const ProdDurationBeautifyProvider();

  @override
  String long(Duration duration) {
    if (duration.inHours > 0) {
      return prettyDuration(
        duration,
        tersity: DurationTersity.hour,
        locale: const RussianDurationLanguage(),
      );
    }

    if (duration.inMinutes > 0) {
      return prettyDuration(
        duration,
        tersity: DurationTersity.minute,
        locale: const RussianDurationLanguage(),
      );
    }

    return prettyDuration(
      duration,
      tersity: DurationTersity.second,
      locale: const RussianDurationLanguage(),
    );
  }
}
