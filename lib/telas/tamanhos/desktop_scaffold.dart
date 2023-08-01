import 'package:dashboard/telas/components/grid_componente.dart';
import 'package:dashboard/telas/components/navegador_componente.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _MobileScafState();
}

class _MobileScafState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Desktop"),
      ),
      backgroundColor: Colors.grey[300],
       body:  LayoutBuilder(
         builder: (context,constraints){
            if(constraints.maxWidth < 1660){
              return tela();
            }else{
              return telaMaior();
            }
        
         }
       ),
    );
  }

  telaMaior(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          const NavegadorComponente(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: const SingleChildScrollView(
              child: Column(              
                children: [
                  SizedBox(
                    width: 800,
                      child: Column(
                        children: [
                          GridComponente(cor: Colors.grey, itemCount: 4,ratio: 4,coluna: 4,height: 200,),
                          GridComponente(cor: Colors.blueGrey, itemCount: 8,ratio: 8,coluna: 4,height: 600,), 
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
              width: 540,
              height: 800,
              child: GridComponente(cor: Colors.blueGrey[400], itemCount: 1,ratio: 2,coluna: 1,height: 300,)
          ), 
      ],
    );
  }
  tela(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          const NavegadorComponente(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: const SingleChildScrollView(
              child: Column(              
                children: [
                  SizedBox(
                    width: 800,
                      child: Column(
                        children: [
                          GridComponente(cor: Colors.grey, itemCount: 4,ratio: 4,coluna: 4,height: 200,),
                          GridComponente(cor: Colors.blueGrey, itemCount: 8,ratio: 8,coluna: 4,height: 600,), 
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
