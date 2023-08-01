import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  const Home({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth < 600){
          return widget.mobileScaffold;
        }else if (constraints.maxWidth < 1100){
          return widget.tabletScaffold;
        }else{
          return widget.desktopScaffold;
        }
    });
  }
}
