import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rolendar/saved_list/saved_view.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade100,
                  border: const Border(
                    right: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Список подій",
                        style: TextStyle(fontSize: 20),
                      )),
                )),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SavedView()),
                );
              },
              child: Container(
                  color: Colors.deepOrange.shade100,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text("Обрані події",
                          style: TextStyle(fontSize: 20)))),
            )
          ],
        ));
  }
}
