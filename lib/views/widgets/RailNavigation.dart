import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RailNavigation extends StatefulWidget {
  const RailNavigation({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  State<RailNavigation> createState() => _RailNavigationState();
}

class _RailNavigationState extends State<RailNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: Colors.white,
      minWidth: 60,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
        if (index == 3) {
          GoogleSignIn().signOut();
          FirebaseAuth.instance.signOut();
        }
      },
      destinations: [
        NavigationRailDestination(
          icon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFFAF8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.grid_view,
                size: 20,
              )),
          selectedIcon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFDAF7F1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.grid_view,
                size: 20,
                color: Colors.black,
              )),
          label: Text(""),
        ),
        NavigationRailDestination(
          icon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFFAF8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.signal_cellular_alt_rounded,
                size: 20,
              )),
          selectedIcon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFDAF7F1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.signal_cellular_alt_rounded,
                size: 20,
                color: Colors.black,
              )),
          label: Text(""),
        ),
        NavigationRailDestination(
          icon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFFAF8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.air,
                size: 20,
              )),
          selectedIcon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFDAF7F1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.air,
                size: 20,
                color: Colors.black,
              )),
          label: Text(""),
        ),
        NavigationRailDestination(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.45),
            icon: Icon(
              Icons.abc,
              color: Colors.white.withOpacity(0),
            ),
            indicatorColor: Colors.transparent,
            disabled: true,
            label: Text("")),
        NavigationRailDestination(
          icon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFFAF8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.logout,
                size: 20,
              )),
          selectedIcon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFDAF7F1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.logout,
                size: 20,
                color: Colors.black,
              )),
          label: Text(""),
        ),
      ],
    );
  }
}
