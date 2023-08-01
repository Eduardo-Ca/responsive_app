import 'package:flutter/material.dart';

class GridComponente extends StatefulWidget {
  final Color? cor;
  final int itemCount;
  final double ratio;
  final int coluna;
  final double height;
  const GridComponente({super.key,required this.cor, required this.itemCount,required this.ratio,required this.coluna,required this.height});

  @override
  State<GridComponente> createState() => _GridComponenteState();
}

class _GridComponenteState extends State<GridComponente> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: widget.height,
      child: AspectRatio(
        aspectRatio: widget.ratio,
        child: GridView.builder(
          itemCount: widget.itemCount,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:widget.coluna),
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: widget.cor,),
            );
          }),
      ),
    );
  }
}
