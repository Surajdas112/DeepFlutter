import 'package:book_tickets/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawerMenu.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {

  int _selectedIndex = 0;


  static final List<Widget>_widgetOptions = <Widget>[
    HomeScreen(),
    const Text("Top Ranks"),
    const Text("Performance"),
    const Text("Activities"),
    const Text("Account"),
  ];

  void _onItemTapped(int index){
  setState(() {
      _selectedIndex= index;
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: DrawerMenu(),
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xff526480),
        items: const [
          BottomNavigationBarItem(icon: Icon  (FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon  (FluentSystemIcons.ic_fluent_people_team_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_people_team_filled)
              ,label: "Top Ranks"),
          BottomNavigationBarItem(icon: Icon  (FluentSystemIcons.ic_fluent_data_pie_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_data_pie_filled)
              ,label: "Performance"),
          BottomNavigationBarItem(icon: Icon  (FluentSystemIcons.ic_fluent_clipboard_letter_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_clipboard_letter_filled)
              ,label: "Activities"),
          BottomNavigationBarItem(icon: Icon  (FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled)
              ,label: "Account" )
        ],
      ),
    );
  }
}
