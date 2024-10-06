// //
//       "image": "order_assigned.png",
//       "title": "Your order has been assigned",
//       "body": "Your order containg 2 items will be delivered within the prescribed time",
//       "timestamp": "2023-01-11T11:06:54.754"
//     },

class NotificationModel {
  final String image;
  final String title;
  final String body;
  final String timestamp;
  NotificationModel(
      {required this.body,
      required this.image,
      required this.timestamp,
      required this.title});

  factory NotificationModel.fromMap(Map<String, dynamic> json) {
    return NotificationModel(
        body: json['body'] as String,
        image: json['image'] as String,
        timestamp: json['timestamp'] as String,
        title: json['title'] as String);
  }
}
