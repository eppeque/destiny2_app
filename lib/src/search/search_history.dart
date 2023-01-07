import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SearchHistory with ChangeNotifier {
  SearchHistory(this._database);

  final Database _database;

  Future<List<String>> loadHistory() async {
    return (await _database.query('Search'))
        .map((search) => search['content'] as String)
        .toList();
  }

  Future<void> addSearch(String query) async {
    await _database.insert(
      'Search',
      {'content': query},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteSearch(String query) async {
    await _database.delete(
      'Search',
      where: 'content = ?',
      whereArgs: [query],
    );
    notifyListeners();
  }
}