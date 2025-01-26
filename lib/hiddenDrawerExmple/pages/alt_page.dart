import 'package:drawer_example/hiddenDrawerExmple/pages/page_five.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_four.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_one.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_three.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import '../widgets/drawer_item.dart';

class AltPage extends StatelessWidget {
  const AltPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      menu: const DrawerItem(),
      screenSelectedBuilder: (position, controller) {
        Widget screen = const SizedBox();

        switch (position) {
          case 0:
            screen = const PageOne();
            break;
          case 1:
            screen = const PageTwo();
            break;
          case 2:
            screen = const PageThree();
            break;
          case 3:
            screen = const PageFour();
            break;
          case 4:
            screen = const PageFive();
        }

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                controller.open();
              },
              icon: const Icon(
                Icons.menu_outlined,
              ),
            ),
          ),
          body: screen,
        );
      },
    );
  }
}
