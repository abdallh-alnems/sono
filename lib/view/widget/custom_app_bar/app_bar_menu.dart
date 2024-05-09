import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../logic/controller/settings_controller.dart';

class AppBarMenu extends GetView<SettingsControllerImp> {
  const AppBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal * 3),
      child: Row(
        children: [
          PopupMenuButton(
            
            offset: Offset(0, 30),
            onSelected: (_) {
              controller.toggleMenuIcon();
            },
            onCanceled: () {
              controller.toggleMenuIcon();
            },
            onOpened: () {
              controller.toggleMenuIcon();
            },
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
            child: Row(
              children: [
                Obx(() => Icon(controller.iconMenu.value
                    ? Icons.keyboard_arrow_up
                    : Icons
                        .keyboard_arrow_down)), 
                Text("NiMs")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
