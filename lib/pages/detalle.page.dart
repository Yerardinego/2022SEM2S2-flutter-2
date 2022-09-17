import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
   DetallePage({super.key, required this.valor, required this.estado,required this.colorEstado});

  double valor;
  String estado;
  Color colorEstado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del calculo"),
      ),


      body: Column(
        children: [
          Expanded(child:Container(
        color:  Colors.red,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text("Resultados", style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                    ),),
                  ],

              ))),

            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 112, 112),
                    borderRadius: BorderRadius.circular(20.0)
                    
                     ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
          
                         Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text(estado, style: TextStyle(color: colorEstado),),Text(valor.toString())],),
                       ],
                     ), 
                ),
              ))
            ],
          ),
        
        ))
        ],)
      //Center(child: Text(valor.toString())),
    );
  }
}