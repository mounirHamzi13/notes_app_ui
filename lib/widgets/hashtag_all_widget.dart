import 'package:flutter/cupertino.dart';
import 'package:notes_app_ui/widgets/text_horizontal_line.dart';

import 'notes_card_list.dart';

class HashtagAllWidget extends StatelessWidget {
  const HashtagAllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextHorizontalLine(text: '#Work'),
        const SizedBox(
          height: 10,
        ),
        const NotesHorizontalList(),
        
        TextHorizontalLine(text: '#Personal'),
        const SizedBox(
          height: 10,
        ),
        const NotesHorizontalList(),
        TextHorizontalLine(text: '#Fitness'),
        const SizedBox(
          height: 10,
        ),
        const NotesHorizontalList(),
      ],
    );
  }
}
