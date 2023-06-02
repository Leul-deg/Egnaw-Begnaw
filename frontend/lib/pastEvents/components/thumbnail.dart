import 'package:flutter/material.dart';
import 'package:frontend/domain/event/event.dart';

import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../presentation/screens/routes/appRouteConstants.dart';

class Thumbnail extends StatelessWidget {
  dynamic event;

  Thumbnail({
    super.key,
    required this.event,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.eventDetailRouteName, queryParameters: {'eventId': event['_id']}),
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: 210,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'card1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              event['title'] ?? 'EV TITLE',
              maxLines: 1,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              DateFormat.yMMMMd().format(DateTime.parse(event['startTime'])),
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
