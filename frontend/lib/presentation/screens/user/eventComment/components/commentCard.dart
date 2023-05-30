import 'package:flutter/material.dart';

List commenters = [
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
    CommentCard(
        comment: 'It was so exciting. We love you!',
        firstName: 'Beyene',
        lastName: 'Kaleb',
        image: 'google.jpg'),
  ];

class CommentCard extends StatelessWidget {
  
  CommentCard({
    super.key,
    required this.comment,
    required this.firstName,
    required this.lastName,
    required this.image,
  });

  String image;
  String firstName;
  String lastName;
  String comment;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 1,
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),
      title: Flexible(
        child: Text(
          '$firstName  $lastName',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: Expanded(
        child: Text(
          comment,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    );
  }
}
