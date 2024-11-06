import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/data/repo/todo_repo.dart';

class DetayCubit extends Cubit<void> {
  DetayCubit() : super(0);

  var todoRepo = TodoRepo();
  Future<void> guncelle(int todo_id, String todo_text) async {
    await todoRepo.guncelle(todo_id, todo_text);
  }
}
