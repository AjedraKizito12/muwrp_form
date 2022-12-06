import 'package:flutter/cupertino.dart';
import 'package:muwrp_form/SQflite/db/notes_database.dart';

import '../model/note.dart';

class AddEditNotePage extends StatefulWidget {
  final Note? note;
  const AddEditNotePage({Key? key, this.note}) : super(key: key);

  @override
  State<AddEditNotePage> createState() => _AddEditNotePageState();
}

class _AddEditNotePageState extends State<AddEditNotePage> {
  final _formKey = GlobalKey<FormState>();
  bool isUploading = false;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  // void addOrUpdateNote() async {
  //   final isValid = _formKey.currentState!.validate();
  //
  //   if (isValid) {
  //     final isUpdating = widget.note != null;
  //
  //     if (isUploading) {
  //       await updateNote();
  //     } else {
  //       await addNote();
  //     }
  //
  //     Navigator.of(context).pop();
  //   }
  // }

  // Future updateNote() async {
  //   final note = widget.note!.copy(
  //     isImportant: isImportant,
  //     number: number,
  //     title: title,
  //     description: description,
  //   );
  //
  //   await NotesDatabase.instance.update(note);
  // }

  // Future addNote() async {
  //   final note = Note(
  //     isImportant: true,
  //     number: number,
  //     title: title,
  //     description: description,
  //     createdTime: DateTime.now(),
  //   );
  //
  //   await NotesDatabase.instance.create(note);
  // }
}
