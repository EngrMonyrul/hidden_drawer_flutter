import 'package:drawer_example/hiddenDrawerExmple/pages/page_five.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_four.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_one.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_three.dart';
import 'package:drawer_example/hiddenDrawerExmple/pages/page_two.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ScreenHiddenDrawer>? _screens;

  void setScreenHiddenDrawer() {
    _screens ??= [];
    _screens?.addAll(
      [
        /* <<--------->> page one <<---------->> */
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Page One",
            selectedStyle: const TextStyle(),
            baseStyle: const TextStyle(),
          ),
          const PageOne(),
        ),

        /* <<--------->> page two <<---------->> */
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Page Two",
            selectedStyle: const TextStyle(),
            baseStyle: const TextStyle(),
          ),
          const PageTwo(),
        ),

        /* <<--------->> page three <<---------->> */
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Page Three",
            selectedStyle: const TextStyle(),
            baseStyle: const TextStyle(),
          ),
          const PageThree(),
        ),

        /* <<--------->> page four <<---------->> */
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Page Four",
            selectedStyle: const TextStyle(),
            baseStyle: const TextStyle(),
          ),
          const PageFour(),
        ),

        /* <<--------->> page five <<---------->> */
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Page Five",
            selectedStyle: const TextStyle(),
            baseStyle: const TextStyle(),
          ),
          const PageFive(),
        ),
      ],
    );

    setState(() {});
  }

  @override
  void initState() {
    setScreenHiddenDrawer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _screens ?? [],
      backgroundColorMenu: Colors.orange.withOpacity(0.7),
    );
  }
}
