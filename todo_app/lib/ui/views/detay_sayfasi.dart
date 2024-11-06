// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/ui/cubit/detay_cubit.dart';

class DetaySayfasi extends StatefulWidget {
  Todo todo;
  DetaySayfasi({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  var textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    var todo = widget.todo;
    textController.text = todo.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo.text),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<DetayCubit>()
                      .guncelle(widget.todo.id, textController.text);
                },
                child: const Text("Güncelle"))
          ],
        ),
      ),
    );
  }
}
