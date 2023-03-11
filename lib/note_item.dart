import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return (Container(
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      width: double.infinity,
      height: size.height * 1 / 9,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'mina karam habib mosaad',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Text('june 26, 2022'),
              SizedBox(
                width: 10.0,
              ),
              Text('08:05 pm'),
            ]),
          ],
        ),
      ),
    ));
  }
}
