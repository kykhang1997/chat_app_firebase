import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool uid;
  final String username;
  const MessageBubble({Key key, this.message, this.uid, this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: uid ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: uid ? Colors.grey[300] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: uid ? Radius.circular(12) : Radius.circular(0),
              bottomRight: uid ? Radius.circular(0) : Radius.circular(12),
            ),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Column(
            crossAxisAlignment:
                uid ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: uid ? Colors.black : Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                message,
                style: TextStyle(color: uid ? Colors.black : Colors.white),
                textAlign: uid ? TextAlign.end : TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
