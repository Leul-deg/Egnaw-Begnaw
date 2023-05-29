import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now(); // Default date is the current date

  Future<DateTime> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)); // Set the date range for selection

    if (picked != null && picked != selectedDate) {
      // If a new date is selected, update the selectedDate variable
      setState(() {
        selectedDate = picked;
      });
    }

    return selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Selected Date: ${selectedDate.toString()}',
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.purple.shade200),
          ),
          onPressed: () {
            _selectDate(context); // Call the function to show the date picker
          },
          child: Text('Select Date'),
        ),
      ],
    );
  }
}
