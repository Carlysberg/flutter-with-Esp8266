import 'package:flutter/material.dart';
import 'package:jay_c/screens/homeass.dart';
import '../screens/bmi.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menutitles = [
      'Home Assistant',
      'BMI',
      'Weather',
      'About'
    ];
    List<Widget> menuItems = [];
    menuItems.add(
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'JayC Tech\nHome Assistant',
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontFamily: 'Pacifico'),
        ),
      ),
    );
    for (var element in menutitles) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(
          element,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        onTap: () {
          switch (element) {
            case 'BMI':
              screen = const Bmi_screen();
              break;

            case 'Home Assistant':
              screen = const MyApp();
              break;
          }
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    }
    return menuItems;
  }
}
