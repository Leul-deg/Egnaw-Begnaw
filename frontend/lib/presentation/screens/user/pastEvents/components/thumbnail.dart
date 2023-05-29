import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';

class Thumbnail extends StatelessWidget {
  String eventName;
  String endTime;
  Thumbnail({
    super.key,
    required this.eventName,
    required this.endTime,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.eventCommentRouteName),
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
              eventName,
              maxLines: 1,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Ended time $endTime',
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
