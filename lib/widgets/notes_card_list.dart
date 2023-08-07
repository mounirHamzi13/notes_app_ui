import 'package:flutter/material.dart';

import 'notes_card.dart';

class NotesHorizontalList extends StatelessWidget {
  const NotesHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NoteCard(
            color: const Color.fromRGBO(207, 175, 248, 1),
          ),
          Transform.translate( 
            offset: Offset(-10,0),
            child: NoteCard(
              color: const Color.fromRGBO(163, 254, 148, 1),
            ),
          ),
          Transform.translate( 
            offset: Offset(-20,0),
            child: NoteCard(
              color: const Color.fromRGBO(181, 222, 244, 1),
            ),
          ),
        ],
      ),
    );
  }
}
