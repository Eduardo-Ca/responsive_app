import 'package:dashboard/telas/home.dart';
import 'package:dashboard/telas/tamanhos/desktop_scaffold.dart';
import 'package:dashboard/telas/tamanhos/mobile_scaffold.dart';
import 'package:dashboard/telas/tamanhos/tablet_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProjetoDashboard());
}

class ProjetoDashboard extends StatelessWidget {
  const ProjetoDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto DashBoard',
      theme: ThemeData(
      
        primarySwatch: Colors.blueGrey,
      ),
      home: const Home(
        desktopScaffold: DesktopScaffold(),
        mobileScaffold:  MobileScaffold(),
        tabletScaffold:  TabletScaffold(),)
    );
  }
}

