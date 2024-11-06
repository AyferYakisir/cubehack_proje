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

        return Todo(id: todo_id, text: text);
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

        return Todo(id: todo_id, text: text);
      },
    );
  }

  Future<void> sil(int todo_id) async {
    var db = await DbHelper.dbAccess();

    await db.delete("toDos", where: "todo_id = ?", whereArgs: [todo_id]);
  }
}
