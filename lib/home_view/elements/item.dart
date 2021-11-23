import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/more_info/more_info.dart';

class Item extends StatelessWidget {
  final Rolendar element;

  const Item(
      {Key? key, required this.element})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color:  Colors.deepPurple.shade50,
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
            Container(
              width: MediaQuery.of(context).size.width * 0.68,
              child: Text(element.title, style: TextStyle(fontSize: 24)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MoreInfo(element: element,)));
              },
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade100.withOpacity(0.35),
                    borderRadius: const BorderRadius.all(Radius.circular(1000)),
                  ),
                  child: const Align(
                    alignment:Alignment.center,
                    child: Text(
                      "?",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                  )),
            )
          ]),
          Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text("Формат: " +  element.form,
                  textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
          Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Дата: " +  element.date,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
