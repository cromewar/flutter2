import 'package:flutter/material.dart';
import 'package:listas_app/src/Screens/contact_items.dart';
import 'package:listas_app/src/model/contact_model.dart';

class Contact extends StatelessWidget {
  buildList() {
    return <ContactModel>[
      ContactModel(name: "Elver Galarga", email: "dir@email.com"),
      ContactModel(name: "Devora Meltrozo", email: "dir@email.com"),
      ContactModel(name: "Ana Lisa Melo", email: "dir@email.com"),
      ContactModel(name: "Jorge Nitales", email: "dir@email.com"),
      ContactModel(name: "Elvio Lado", email: "dir@email.com"),
      ContactModel(name: "Armando Broncas", email: "dir@email.com"),
      ContactModel(name: "Aquiles Castro", email: "dir@email.com"),
    ];
  }

  List<ContactItem> buildContactList() {
    return buildList()
        .map<ContactItem>((contact) => ContactItem(contact: contact))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts App",
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: buildContactList(),
      ),
    );
  }
}
