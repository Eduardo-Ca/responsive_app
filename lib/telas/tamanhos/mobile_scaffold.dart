import 'package:dashboard/telas/components/grid_componente.dart';
import 'package:dashboard/telas/components/navegador_componente.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScafState();
}

class _MobileScafState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        title: const Text("Mobile"),
      ),
      backgroundColor: Colors.grey[300],
      drawer: const NavegadorComponente(),
      body:  const SingleChildScrollView(
        child: Column(
          children: [
            GridComponente(cor: Colors.grey, itemCount: 4,ratio: 2,coluna: 2,height: 500,),
            GridComponente(cor: Colors.blueGrey, itemCount: 8,ratio: 8,coluna: 2,height: 1000,),   
            
          ],
        ),
      ),
    );
  }
}
