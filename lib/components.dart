import 'package:flutter/material.dart';
import 'package:notes/note.dart';

Widget buildItem(size, Note note) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Container(
      decoration: const BoxDecoration(
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
              note.subject!,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(children: [
              Text(note.date!),
              const SizedBox(
                width: 10.0,
              ),
              Text(note.time!),
            ]),
          ],
        ),
      ),
    ),
  );
}
