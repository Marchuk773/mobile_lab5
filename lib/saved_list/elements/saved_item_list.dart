import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/bloc/bloc.dart';
import 'package:rolendar/saved_list/elements/saved_item.dart';

class SavedItemList extends StatelessWidget {
  const SavedItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<List<Rolendar>>(context);
    print(data);
    return BlocProvider(
        create: (context) => ActionBloc("initialState"),
        child: Column(
          children: data
              .map((element) => SavedItem(
                    element: element,
                  ))
              .toList(),
        ));
  }
}
