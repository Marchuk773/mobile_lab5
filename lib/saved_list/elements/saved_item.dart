import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/bloc/action.dart';
import 'package:rolendar/bloc/bloc.dart';
import 'package:rolendar/saved_list/elements/second_text.dart';

class SavedItem extends StatelessWidget {
  final Rolendar element;

  const SavedItem({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (event) {
      BlocProvider.of<ActionBloc>(context, listen: false)
            .add(DeleteAction( "Selected",element.id));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          boxShadow: [
            BoxShadow(
              color: Colors.orangeAccent.shade100.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(element.title,
                      style: const TextStyle(fontSize: 24))),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(element.price.toString(),
                    style: const TextStyle(fontSize: 24)),
              ),
            ]),
            SecondText(text: "Формат: " + element.form),
            SecondText(text: "Дата: " + element.date),
            SecondText(text: "Жанр: " + element.genre),
          ],
        ),
      ),
    );
  }
}
