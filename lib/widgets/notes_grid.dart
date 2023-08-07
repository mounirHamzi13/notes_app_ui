import 'package:flutter/material.dart';

import 'notes_card.dart';

class NotesGrid extends StatelessWidget {
  const NotesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      
      scrollDirection: Axis.vertical,
    padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 29),
      // shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 0.711,
      mainAxisSpacing: 10,
      children: [
        NoteCard( 
          small: true,
          color: Color.fromRGBO(202, 171, 241, 1),
        ),
        Transform.translate(
          offset: Offset(-9, 15),
          child: NoteCard( 
            small: true,
            color: Color.fromRGBO(163, 254, 148, 1),
          ),
        ),
        NoteCard(
          small: true ,
          color: Color.fromRGBO(182, 223, 245, 1),
        ),
        Transform.translate(
          offset: Offset(-9, -10),
          child: NoteCard(
            small: true,
            color: Color.fromRGBO(255, 219, 161, 1),
          ),
        ),
      ],
    );
  }
}
