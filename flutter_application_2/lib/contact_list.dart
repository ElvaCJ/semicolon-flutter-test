import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact_model.dart';
import 'main.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final contactModel = Provider.of<ContactModel>(context);
    final colorModel = Provider.of<ColorModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        actions: [
          Switch(
            value: colorModel.isDark,
            onChanged: (value) {
              colorModel.toggleTheme();
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contactModel.contacts.length,
        itemBuilder: (context, index) {
          final contact = contactModel.contacts[index];
          return Dismissible(
            key: Key(contact.phone),
            onDismissed: (direction) {
              contactModel.removeContact(index);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${contact.name} deleted')),
              );
            },
            background: Container(color: Colors.red),
            child: GestureDetector(
              onLongPress: () {
                Navigator.pushNamed(context, '/edit', arguments: index);
              },
              child: ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.phone),
              ),
            ),
          );
        },
      ),
    );
  }
}
