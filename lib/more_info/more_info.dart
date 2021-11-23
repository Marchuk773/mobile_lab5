import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolendar/api_firestore/api_firestore.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/bloc/bloc.dart';
import 'package:rolendar/more_info/elements/second_text.dart';
import 'package:rolendar/more_info/elements/title_text.dart';
import 'package:rolendar/navigation/app_bar.dart';

class MoreInfo extends StatelessWidget {
  final Rolendar element;

  const MoreInfo({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ActionBloc("initialState"),
    child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800,
        title: AppBarCopy(element: element,)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.all(6),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.5)),
                color: Colors.white.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange.shade100.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.35,
                    // margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.5)),
                        image: DecorationImage(
                            image: AssetImage("assets/img/img.png"),
                            fit: BoxFit.cover)),
                  ),
                  SecondText(
                    title: "Дата: " + element.date,
                  ),
                  SecondText(
                    title: "Локація: " + element.location,
                  ),
                  TitleText(
                    title: element.title,
                  ),
                  SecondText(
                    title: "Жанр: " + element.genre,
                  ),
                  SecondText(
                    title: "Форма проведення: " + element.form,
                  ),
                  SecondText(title: "Вартість: " + element.price.toString()),
                  SecondText(
                    title: "Електронна пошта: " + element.email,
                  ),
                  const TitleText(title: "Опис"),
                  SecondText(
                    title: element.description,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple.shade700,
    ));
  }
}
