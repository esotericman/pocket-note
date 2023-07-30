import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;

import 'package:pocket_note/models/note.dart';

class DatabaseHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE note(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        note_name TEXT NOT NULL,
        note_text TEXT NOT NULL,
        note_icon TEXT,
        note_type INTEGER NOT NULL DEFAULT 1,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      join(await sql.getDatabasesPath(), "pocket_note.db"),
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Create new note
  static Future<int> createNote(Note note) async {
    final db = await DatabaseHelper.db();

    final id = await db.insert('note', note.toMap(),
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Read all notes
  static Future<List<Map<String, dynamic>>> getNotes() async {
    final db = await DatabaseHelper.db();
    return db.query('note', orderBy: "id");
  }

  // Get a single note by id
  //We don't use this method, it is for you if you want it.
  static Future<List<Map<String, dynamic>>> getNote(int id) async {
    final db = await DatabaseHelper.db();
    return db.query('note', where: "id = ?", whereArgs: [id], limit: 1);
  }

  // Update an note by id
  static Future<int> updateNote(Note note) async {
    final db = await DatabaseHelper.db();

    final result = await db
        .update('note', note.toMap(), where: "id = ?", whereArgs: [note.id]);
    return result;
  }

  // Delete
  static Future<void> deleteNote(int id) async {
    final db = await DatabaseHelper.db();
    try {
      await db.delete("note", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an note: $err");
    }
  }
}
