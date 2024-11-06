import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/data/repo/todo_repo.dart';

class AnasayfaCubit extends Cubit<List<Todo>> {
  AnasayfaCubit() : super([]);

  var todoRepo = TodoRepo();

  Future<void> todos() async {
    var todoList = await todoRepo.todos();
    emit(todoList);
  }

  Future<void> ara(String aramaKelimesi) async {
    var todoList = await todoRepo.ara(aramaKelimesi);
    emit(todoList);
  }

  Future<void> sil(int todo_id) async {
    await todoRepo.sil(todo_id);
    await todos();
  }

  Future<void> todoComplete(int todo_id) async {
    await todoRepo.todoComplete(todo_id);

    var todoList = await todoRepo.todos();
    emit(todoList);
  }
}
