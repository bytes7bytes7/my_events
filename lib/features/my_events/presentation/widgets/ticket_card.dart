import 'package:flutter/material.dart';

import '../../../../themes/extensions/extensions.dart';
import '../../../common/application/view_models/ticket_vm.dart';
import 'ticket_icon.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
    required this.ticket,
    required this.onPressed,
  });

  final TicketVM ticket;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textThemeTX = theme.extension<TextThemeTX>()!;

    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      color: theme.colorScheme.tertiary,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      ticket.event.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  const TicketIcon(),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'роль: ${ticket.role}',
                style: textThemeTX.labelThin,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                ticket.event.period,
                style: textThemeTX.labelThin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
