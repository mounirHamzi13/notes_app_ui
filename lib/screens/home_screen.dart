import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:notes_app_ui/widgets/app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app_ui/widgets/notes_card.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/hashtag_all_widget.dart';
import '../widgets/notes_grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  double? heightVar;
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String dropDownButtonValue = 'Personal';
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            // scrollDirection: Axis.vertical ,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Notes',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.add,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                      ),
                      child: DropdownButton(
                          isExpanded: true,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          // icon: Icon(CupertinoIcons.chevron_down),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          // borderRadius: BorderRadius.circular(20),
                          // dropdownColor: Colors.grey,
                          underline: Container(),
                          value: dropDownButtonValue,
                          items: const [
                            DropdownMenuItem(
                              value: 'All',
                              child: Text('All'),
                            ),
                            DropdownMenuItem(
                              value: 'Work',
                              child: Text('Work'),
                            ),
                            DropdownMenuItem(
                              value: 'Personal',
                              child: Text('Personal'),
                            ),
                            DropdownMenuItem(
                              value: 'Fitness',
                              child: Text('Fitness'),
                            ),
                            DropdownMenuItem(
                              value: 'All',
                              child: Text('All'),
                            ),
                          ],
                          onChanged: (_) {}),
                    ),
                    Container(
                      width: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/svgs/icon.svg'),
                          const Icon(
                            Icons.menu,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TabBar(
                  onTap: (value) { 
                    Timer(Duration(milliseconds: 10),( ){ 
                    tabController!.index = value;
                      
                    });
                    setState(() {
                      
                    });
                  },
                  controller: tabController,
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  indicator: BoxDecoration(
                      color: const Color.fromRGBO(205, 251, 73, 1),
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  labelColor: Colors.black,
                  labelStyle: Theme.of(context).textTheme.bodyLarge,
                  physics: const BouncingScrollPhysics(),
                  isScrollable: true,
                  tabs: const [
                    Text("#All"),
                    Text("#Work"),
                    Text("#Personal"),
                    Text("#Fitness"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height:   (250 + 90) * 3,
                // double.infinity , 
                    // tabController!.index == 0
                    //     ? (250 + 90) * 3
                    //     : MediaQuery.of(context).size.height * 0.61,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    HashtagAllWidget(),
                    NotesGrid(),
                    NotesGrid(),
                    NotesGrid(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
