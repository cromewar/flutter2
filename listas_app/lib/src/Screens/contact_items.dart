import 'package:flutter/material.dart';
import 'package:listas_app/src/model/contact_model.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;
  ContactItem({this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("R"),
      ),
      title: Text(
        contact.name,
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(contact.email, style: TextStyle(color: Colors.black)),
    );
  }
}
