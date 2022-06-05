import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/models/Note.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = <Note>[];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('First Note', 'First Descritpion');
  }

  void addNewNote(String title, String descritpion) {
    Note note = new Note(title, descritpion);
    _notes.add(note);
    notifyListeners();
  }
}
