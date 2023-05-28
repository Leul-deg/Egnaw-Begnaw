import 'package:flutter/material.dart';

import './thumbnail.dart';
import './mySearchBar.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? endTimes;
  List thumbnails = [
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
    Thumbnail(
      endTime: '2 days ago',
      eventName: 'Rophnan Concert',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Past Event',
      home: Scaffold(
        appBar: MySearchBar(
          onSearch: (value) => true,
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return Padding(
              padding: EdgeInsets.only(
                left: screen.width * 0.03,
                right: screen.width * 0.03,
                top: screen.height * 0.02,
              ),
              child: GridView.builder(
                itemCount: thumbnails.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                  childAspectRatio: orientation == Orientation.portrait
                      ? screen.width / (screen.height * 0.8)
                      : screen.width / (screen.height * 1.3),
                  crossAxisSpacing: screen.width * 0.02,
                  mainAxisSpacing: screen.height * 0.03,
                ),
                itemBuilder: (context, index) {
                  final thumbnail = thumbnails[index];
                  return Expanded(
                    child: thumbnail,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}


