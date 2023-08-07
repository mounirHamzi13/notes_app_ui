//  Column(
//             // shrinkWrap: true,
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Your Notes',
//                       style: Theme.of(context).textTheme.headlineLarge,
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(13),
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black, width: 2),
//                           borderRadius: BorderRadius.circular(12)),
//                       child: Icon(
//                         Icons.add,
//                         size: 25,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 180,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.grey.shade300,
//                       ),
//                       child: DropdownButton(
//                           isExpanded: true,
//                           icon: const Icon(
//                             Icons.keyboard_arrow_down,
//                             color: Colors.black,
//                           ),
//                           // icon: Icon(CupertinoIcons.chevron_down),
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyMedium!
//                               .copyWith(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold),
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           // borderRadius: BorderRadius.circular(20),
//                           // dropdownColor: Colors.grey,
//                           underline: Container(),
//                           value: dropDownButtonValue,
//                           items: const [
//                             DropdownMenuItem(
//                               value: 'All',
//                               child: Text('All'),
//                             ),
//                             DropdownMenuItem(
//                               value: 'Work',
//                               child: Text('Work'),
//                             ),
//                             DropdownMenuItem(
//                               value: 'Personal',
//                               child: Text('Personal'),
//                             ),
//                             DropdownMenuItem(
//                               value: 'Fitness',
//                               child: Text('Fitness'),
//                             ),
//                             DropdownMenuItem(
//                               value: 'All',
//                               child: Text('All'),
//                             ),
//                           ],
//                           onChanged: (_) {}),
//                     ),
//                     Container(
//                       width: 55,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SvgPicture.asset('assets/svgs/icon.svg'),
//                           Icon(
//                             Icons.menu,
//                             color: Colors.grey,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//                 child: TabBar(
//                   labelPadding:
//                       EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                   indicator: BoxDecoration(
//                       color: Color.fromRGBO(205, 251, 73, 1),
//                       border: Border.all(
//                         width: 2,
//                         color: Colors.black,
//                       ),
//                       borderRadius: BorderRadius.circular(12)),
//                   labelColor: Colors.black,
//                   labelStyle: Theme.of(context).textTheme.bodyLarge,
//                   physics: BouncingScrollPhysics(),
//                   isScrollable: true,
//                   tabs: [
//                     Text("#All"),
//                     Text("#Work"),
//                     Text("#Personal"),
//                     Text("#Fitness"),
//                   ],
//                 ),
//               ),
              
//               SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 child: 
//                  TabBarView(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextHorizontalLine(text: '#Work'),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         NotesHorizontalList(),
                        
//                         TextHorizontalLine(text: '#Personal'),
//                         SizedBox(
//                           height: 10,
//                         ),
//                          NotesHorizontalList(),
//                       ],
//                     )
//                   ],
//                 ),
              
//               )
//             ],
//           )