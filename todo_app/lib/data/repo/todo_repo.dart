import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/sqlite/db_helper.dart';

class TodoRepo {
  Future<List<Todo>> todos() async {
    var db = await DbHelper.dbAccess();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM toDos");

    return List.generate(
      maps.length,
      (index) {
        var todo = maps[index];
        int todo_id = todo["todo_id"];
        String text = todo["todo_text"];
        int isCompleted = todo["todo_complete"] ?? 0; // Eğer null ise 0 kullan

        return Todo(id: todo_id, text: text, isCompleted: isCompleted);
      },
    );
  }

  Future<void> guncelle(int todo_id, String todo_text) async {
    var db = await DbHelper.dbAccess();
    var updateToDo = Map<String, dynamic>();
    updateToDo["todo_text"] = todo_text;

    db.update("toDos", updateToDo, where: "todo_id = ?", whereArgs: [todo_id]);
  }

  Future<void> kaydet(String todo_text) async {
    var db = await DbHelper.dbAccess();

    var insertToDo = Map<String, dynamic>();
    insertToDo["todo_text"] = todo_text;

    db.insert("toDos", insertToDo);
  }

  Future<List<Todo>> ara(String aramaKelimesi) async {
    var db = await DbHelper.dbAccess();

    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM toDos WHERE todo_text LIKE '%$aramaKelimesi%'");

    return List.generate(
      maps.length,
      (index) {
        var todo = maps[index];
        int todo_id = todo["todo_id"];
        String text = todo["todo_text"];
        int isCompleted = todo["todo_complete"];
        return Todo(id: todo_id, text: text, isCompleted: isCompleted);
      },
    );
  }

  Future<void> sil(int todo_id) async {
    var db = await DbHelper.dbAccess();

    await db.delete("toDos", where: "todo_id = ?", whereArgs: [todo_id]);
  }

  Future<void> todoComplete(int todo_id) async {
    var db = await DbHelper.dbAccess();
    final List<Map<String, dynamic>> todo = await db.query(
      'toDos',
      where: 'todo_id = ?',
      whereArgs: [todo_id],
    );

    if (todo.isNotEmpty) {
      bool isCompleted = todo.first['todo_complete'] == 1;
      int newCompleteValue = isCompleted ? 0 : 1;

      await db.update(
        'toDos',
        {'todo_complete': newCompleteValue},
        where: 'todo_id = ?',
        whereArgs: [todo_id],
      );
    }
  }
}
