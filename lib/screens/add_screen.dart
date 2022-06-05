import 'package:flutter/material.dart';
import 'package:notes_app/models/NotesOperation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  //const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String titleText;
    late String description;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Title',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              onChanged: (value) {
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Description',
                    hintStyle: TextStyle(fontSize: 18, color: Colors.white)),
                style: TextStyle(fontSize: 18, color: Colors.white),
                onChanged: (value) {
                  description = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Provider.of<NotesOperation>(context, listen: false)
                    .addNewNote(titleText, description);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                'Add Note',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
