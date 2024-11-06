import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/repo/todo_repo.dart';

class KayitCubit extends Cubit<void> {
  KayitCubit() : super(0);

  var todoRepo = TodoRepo();

  Future<void> kaydet(String text) async {
    await todoRepo.kaydet(text);
  }
}
