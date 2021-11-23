import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/home_view/elements/item.dart';

class ItemList extends StatelessWidget {

  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<List<Rolendar>>(context);

    return Column(
      children: data.map((element) => Item(element: element,)).toList(),
    );
  }
}
