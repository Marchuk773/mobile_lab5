import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/bloc/action.dart';
import 'package:rolendar/bloc/bloc.dart';

class AppBarCopy extends StatelessWidget {
  final Rolendar element;
  const AppBarCopy({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(element.title),
        InkWell(
            child: const Icon(Icons.add),
            onTap: () => {
              BlocProvider.of<ActionBloc>(context, listen: false).add(SaveAction( "Selected",element))})
      ],
    );
  }
}
