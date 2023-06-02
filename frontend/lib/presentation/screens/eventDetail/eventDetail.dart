import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../routes/appRouteConstants.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EventDetails',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.organizerScreenRouteName),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete event'),
                ),
              ],
              onSelected: (value) {
                if (value == 'delete') {
                  // Perform delete operation
                }
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Body(),
      ),
    );
  }
}
