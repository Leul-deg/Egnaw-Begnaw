import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_create/event_create_bloc.dart';

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
        context.read<EventCreateBloc>().add(
              EventCreateEvent.eventDateChanged(selectedDate),
            );
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
          '${selectedDate.toString()}',
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {
                _selectDate(
                    context); // Call the function to show the date picker
              },
              icon: Icon(
                Icons.calendar_today,
                size: 40,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
