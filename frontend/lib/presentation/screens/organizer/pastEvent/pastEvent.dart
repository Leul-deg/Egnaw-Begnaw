import 'package:flutter/material.dart';
import '../eventComment/eventComment.dart';

class PastEvent extends StatefulWidget {
  const PastEvent({super.key});

  @override
  State<PastEvent> createState() => _PastEventState();
}

class _PastEventState extends State<PastEvent> {
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

class MySearchBar extends StatefulWidget implements PreferredSizeWidget {
  final double height = 56.0;
  final ValueChanged<String> onSearch;

  MySearchBar({required this.onSearch});

  @override
  _MySearchBarState createState() => _MySearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: TextField(
        controller: _searchController,
        onChanged: (value) {
          setState(() {
            _searchText = value;
          });
          widget.onSearch(value);
        },
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: "Search...",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: _searchText.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _searchController.clear();
                      _searchText = "";
                    });
                    widget.onSearch("");
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}

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
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: ((context) => EventComment()))),
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Ended time ${endTime}',
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
