import 'package:flutter/material.dart';
import './datePicker.dart';
import './timepicker.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _titleController =
      TextEditingController(text: 'My Event Title');
  TextEditingController _detailsController =
      TextEditingController(text: 'My Event Details');
  TextEditingController _locationController =
      TextEditingController(text: 'My Event Location');
  TextEditingController _imageController =
      TextEditingController(text: 'https://example.com/my-event-image.jpg');

  String eventDate = '';
  String eventTime = '';
  String eventOrganizers = '';
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screen.width > 600 ? screen.width * 0.15 : 18,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 13),
                    TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        labelText: 'Event Title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 17),
                    TextFormField(
                      controller: _detailsController,
                      decoration: InputDecoration(
                        labelText: 'Event Details (optional)',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      ),
                      maxLines: 3,
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Start Time',
                              style: TextStyle(
                                fontSize: screen.width > 600 ? 24 : 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: screen.width > 600 ? 20 : 7,
                            ),
                            TimePicker(),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'End Time',
                              style: TextStyle(
                                fontSize: screen.width > 600 ? 24 : 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: screen.width > 600 ? 20 : 7,
                            ),
                            TimePicker(),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: screen.width > 600 ? 30 : 15,
                    ),
                    Divider(),
                    Center(child: DatePicker()),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _locationController,
                      decoration: InputDecoration(
                        labelText: 'Location',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _imageController,
                      decoration: InputDecoration(
                        labelText: 'Image Link',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: screen.width > 600 ? 40 : 20),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          minimumSize: MaterialStateProperty.all(
                            Size(screen.width > 600 ? 300 : 200, 50),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          // Submit form data to database
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
