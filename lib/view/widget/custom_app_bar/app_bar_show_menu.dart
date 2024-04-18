import 'package:flutter/material.dart';



class MyPopupMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.safety_check),
      offset: Offset(0, 40),
      elevation: 0.0, // إلغاء التأثير

      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text('عنصر 1'),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('عنصر 2'),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.delete),
              title: Text('عنصر 3'),
            ),
          ),
        ];
      },
    );
  }
}
