import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool itsMe;

  MessageBubble({this.sender, this.text, this.itsMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            itsMe == true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Text(
              sender,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 3.0),
          getBubble(itsMe),
        ],
      ),
    );
  }

  Material getBubble(bool me) {
    if (me == true) {
      return Material(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        elevation: 5.0,
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      );
    } else {
      return Material(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        elevation: 5.0,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
      );
    }
  }
}
