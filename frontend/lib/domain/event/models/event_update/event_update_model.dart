class EventUpdateModel {
  final String description;
  final String title;
  final String place;
  final String startTime;
  final String endTime;
  final int availableSeats;
  final int ticketsSold;

  const EventUpdateModel({
    required this.description,
    required this.title,
    required this.place,
    required this.startTime,
    required this.endTime,
    required this.availableSeats,
    required this.ticketsSold,
  });

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) {
    return EventUpdateModel(
      description: json['description'],
      title: json['title'],
      place: json['place'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      availableSeats: json['availableSeats'],
      ticketsSold: json['ticketsSold'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'title': title,
      'place': place,
      'startTime': startTime,
      'endTime': endTime,
      'availableSeats': availableSeats,
      'ticketsSold': ticketsSold,
    };
  }
}