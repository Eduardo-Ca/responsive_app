import 'package:dashboard/telas/components/grid_componente.dart';
import 'package:dashboard/telas/components/navegador_componente.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _MobileScafState();
}

class _MobileScafState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Tablet"),
      ),
      backgroundColor: Colors.grey[300],
      drawer: const NavegadorComponente(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            GridComponente(cor: Colors.grey, itemCount: 4,ratio: 4,coluna: 4,height: 200,), 
            GridComponente(cor: Colors.blueGrey, itemCount: 8,ratio: 8,coluna: 4,height: 540,), 
          ],
        ),
      ),
    );
  }
}
