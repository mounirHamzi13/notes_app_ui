import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_ui/widgets/custom_appbar.dart';

class NoteDetaiScreen extends StatelessWidget {
  static String routeName = '/note_detail';
  const NoteDetaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        'Don\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \n Don\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \n Don\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \nDon\'t read the caption, it\'s all same , you dumb dumb , did you even read this though \n';
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This is a mockup stupid',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        '5th Aug 2023',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 17),
                      ),
                      SizedBox(height: 10,) ,
                      Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 17, color: Colors.grey.shade600),
                      ),
                      Icon(Icons.settings)
                    ],
                  ),
                ),
              ),
            ) ,
            SizedBox(height: 10,) ,
            Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding:  EdgeInsets.only(left : 35.0),
                  child: Text('Cancel', style: TextStyle(color: Colors.black),),
                ) , 
                Container(   
                  padding: EdgeInsets.symmetric(horizontal: 95, vertical: 25 ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20), 
                      color: const Color.fromRGBO(207, 255, 71, 1)), 
                      child: Text("Confirm", style: TextStyle(color: Colors.black),), 
                  
                )
              ],
            )
          ], 
        
        ),
      ),
    );
  }
}
