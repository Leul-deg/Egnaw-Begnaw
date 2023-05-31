import 'package:flutter/material.dart';
import 'commentCard.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isCommmentThere = true;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Event Comment Page',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(child: Text('Rophnan Concert')),
        ),
        body: Padding(
          padding: EdgeInsets.all(screen.width * 0.01),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(screen.width * 0.015),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a comment',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: screen.width * 0.02),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screen.height * 0.02),
              Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: commenters.length,
                    itemBuilder: (context, index) {
                      final comment = commenters[index];
                      return comment;
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 1,
                        height: screen.height * 0.01,
                        color: Colors.grey,
                      );
                    },
                  ),
                ),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
