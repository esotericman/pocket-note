import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pocket_note/models/note.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  List<Note> notes = [
    const Note(
        id: 1, noteName: "第一份笔记", noteIcon: "e4bf", noteText: "", noteType: ""),
    const Note(
        id: 2, noteName: "第二份笔记", noteIcon: "f2b9", noteText: "", noteType: ""),
    const Note(
        id: 3, noteName: "第三份笔记", noteIcon: "f023", noteText: "", noteType: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              color: Colors.grey[800],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(
                      IconDataSolid(int.parse("0x${notes[index].noteIcon}")),
                      color: Colors.black,
                    ),
                    Text(
                      notes[index].noteName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              FaIcon(FontAwesomeIcons.copy),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/note-info');
                          },
                          child: const Row(
                            children: [
                              FaIcon(FontAwesomeIcons.circleInfo),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
