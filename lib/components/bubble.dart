import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String messageSender;
  final String messageText;
  final bool isMe;

  MessageBubble({this.messageSender, this.messageText, this.isMe});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            messageSender,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.circular(15) : Radius.circular(0),
              topRight: isMe ? Radius.circular(0) : Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: isMe ? Colors.blue : Colors.lightBlue[200],
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '$messageText',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
