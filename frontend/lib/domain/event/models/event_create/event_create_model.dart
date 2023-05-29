class EventCreateModel {
  final String organizerId;
  final String description;
  final String title;
  final String place;
  final String startTime;
  final String endTime;
  final int availableSeats;
  final int ticketsSold;

  const EventCreateModel({
    required this.organizerId,
    required this.description,
    required this.title,
    required this.place,
    required this.startTime,
    required this.endTime,
    required this.availableSeats,
    required this.ticketsSold,
  });

  factory EventCreateModel.fromJson(Map<String, dynamic> json) {
    return EventCreateModel(
      organizerId: json['organizerId'],
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
      'organizerId': organizerId,
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