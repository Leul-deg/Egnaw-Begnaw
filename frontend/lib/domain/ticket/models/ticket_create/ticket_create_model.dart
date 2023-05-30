class TicketCreateModel {
  final String eventId;
  final String userId;

  TicketCreateModel({
    required this.eventId,
    required this.userId,
  });

  factory TicketCreateModel.fromJson(Map<String, dynamic> json) {
    return TicketCreateModel(
      eventId: json['eventId'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'eventId': eventId,
      'userId': userId,
    };
  }
}