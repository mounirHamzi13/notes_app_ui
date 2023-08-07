import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 27,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.dribbble.com/users/4045272/avatars/normal/019a001608d2bbb0bd251f63290b0135.png?1667988295&resize=40x40'),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: ' Welcome Back ',
                style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
                text: 'Mounir', style: Theme.of(context).textTheme.bodyLarge)
          ]))
        ],
      ),
      actions: const [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
          size: 25,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, right: 20, left: 10),
          child: Badge(
              alignment: Alignment.topRight,
              child: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
                size: 25,
              )),
        )
      ],
    );
  
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
