class Note {
  final int id;
  final String noteName;
  final String noteText;
  final String noteIcon;
  final String noteType;
  final DateTime? createAt;

  const Note({
    required this.id,
    required this.noteName,
    required this.noteText,
    required this.noteIcon,
    required this.noteType,
    this.createAt,
  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'note_name': noteName,
      'note_text': noteText,
      'note_icon': noteIcon,
      'note_type': noteType,
      'create_at': createAt,
    }..removeWhere((key, value) => value == null);
  }

  // Implement toString to make it easier to see information about
  // each note when using the print statement.
  @override
  String toString() {
    return 'Note{id: $id, noteName: $noteName, noteText: $noteText, noteIcon: $noteIcon,noteType: $noteType,createAt: $createAt,}';
  }
}
