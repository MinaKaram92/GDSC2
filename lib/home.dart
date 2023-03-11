import 'package:flutter/material.dart';
import 'package:notes/components.dart';
import 'note.dart';

class HomeScreen extends StatelessWidget {
  List<Note> notes = [
    Note(
        subject: 'Todays grocery list',
        date: 'June 30, 2022',
        time: '08:55 pm'),
    Note(subject: 'read short story', date: 'March 15, 2023', time: '02:05 pm'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Notepad',
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: SizedBox(
                  width: double.infinity,
                  height: size.height * 1 / 15,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Notes',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return buildItem(size, notes[index]);
                  },
                  itemCount: notes.length,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add, size: 50.0, color: Colors.black),
      ),
    );
  }
}
