import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolendar/api_firestore/api_firestore.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/home_view/elements/item_list.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Rolendar>>.value(
        value: ApiFirestore(documentId: 'documentId',collectionId: "MainList").data,
        initialData: const [],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ItemList(),
            ],
          ),
        ));
  }
}
