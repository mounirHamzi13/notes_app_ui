import 'package:flutter/material.dart';
import 'package:notes_app_ui/screens/note_detail.dart';

// ignore: must_be_immutable
class NoteCard extends StatelessWidget {
  Color color;
  double width;
  double height;
  bool small;
  NoteCard({
    super.key,
    required this.color,
    this.height = 250,
    this.width = 200,
    this.small = false ,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, NoteDetaiScreen.routeName);
      },
      child: Transform.rotate(
        angle: -45 / 360,
        // angle: 0,
        child: !small ? Container(
          // margin: EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "It's not going anywhere man",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text('8th Aug 2023',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15, color: Colors.grey.shade700)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                    "Don't read the caption ,it's all same ,you dumb dumb ,did you even read this.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey.shade600, fontSize: 16)),
              ),
              const Row(
                children: [
                  Spacer(),
                  FlutterLogo(
                    style: FlutterLogoStyle.markOnly,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        )  : 
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          width: 150,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "It's not going anywhere man",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text('8th Aug 2023',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 13, color: Colors.grey.shade700)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                    "Don't read the caption ,it's all same ,you dumb dumb ,did you even read this.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey.shade600, fontSize: 15)),
              ),
              const Row(
                children: [
                  Spacer(),
                  FlutterLogo(
                    style: FlutterLogoStyle.markOnly,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        )   
        
      ),
    );
  }
}
