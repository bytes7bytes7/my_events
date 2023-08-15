import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class TicketIcon extends StatelessWidget {
  const TicketIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 48,
      child: Assets.icons.myEvent.svg(),
    );
  }
}
