import 'package:flutter/material.dart';

class NavegadorComponente extends StatelessWidget {
  const NavegadorComponente({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if (constraints.maxWidth < 1100){
          return  const Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DrawerHeader(child: Icon(Icons.favorite)),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("D A S H B O A R D"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("C O N F I G U R A Ç Õ E S"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("S A I R"),
                )
              ],
            ),
          ),
        );
        }else{
          return Container(
            width: 300,
            height: MediaQuery.sizeOf(context).height,
            color: Colors.white,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  DrawerHeader(child: Icon(Icons.favorite)),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("D A S H B O A R D"),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("C O N F I G U R A Ç Õ E S"),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("S A I R"),
                  )
                ],
              ),
            ),
          );
        }
    });
    
    
  }
}
