import 'package:flutter/material.dart';
class TimePicker extends StatefulWidget {
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now(); // Default time is the current time

  Future<TimeOfDay> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    ); // Display time picker dialog to the user

    if (picked != null && picked != selectedTime) {
      // If a new time is selected, update the selectedTime variable
      setState(() {
        selectedTime = picked;
      });
    }

    return selectedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Selected Time: ${selectedTime.format(context)}',
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.purple.shade200),
          ),
          onPressed: () {
            _selectTime(context); // Call the function to show the time picker
          },
          child: Text('Select Time'),
        ),
      ],
    );
  }
}
