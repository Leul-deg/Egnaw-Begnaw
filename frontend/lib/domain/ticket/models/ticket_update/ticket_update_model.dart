class TicketUpdateModel {
  final String id;
  final String eventId;
  final String userId;

  TicketUpdateModel({
    required this.id,
    required this.eventId,
    required this.userId,
  });

  factory TicketUpdateModel.fromJson(Map<String, dynamic> json) {
    return TicketUpdateModel(
      id: json['id'],
      eventId: json['eventId'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'eventId': eventId,
      'userId': userId,
    };
  }
}