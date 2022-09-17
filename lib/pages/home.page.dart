import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double peso =0.0;
  int edad = 0;
  double estatura = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculo IMC"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.man,size: 100,),
                        Text("Hombre")
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 112, 112),
                        borderRadius: BorderRadius.circular(20.0)),
                    //color: Color.fromARGB(255, 114, 112, 112),
                  ),
                )),
                Expanded(
                     child: Padding(
                  padding: const EdgeInsets.all(20),
                     child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.woman,size: 100,),
                        Text("Mujer")
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 112, 112),
                        borderRadius: BorderRadius.circular(20.0)),
                    //color: Color.fromARGB(255, 114, 112, 112),
                  )
                ))
              ],
            ),
          )),
          Expanded(
              child: Container(
                          
            child:Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                      decoration: BoxDecoration(

                        color: Color.fromARGB(255, 114, 112, 112),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(children: [Text('Estatura'),Text(estatura.toString()),Slider(value: estatura,min: 50, max:250, divisions: 200 ,onChanged: (double value){
                        setState(() {
                        estatura=value; 
                        });
                      })]),

                  ),
            ) ,
          )),
          Expanded(
             child: Container(
             child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text("Peso"),

                            Text(peso.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                onPressed: (){
                                  setState(() {
                                    peso +=1;
                                  });
                                },
                                icon: Icon(Icons.add_circle,),iconSize: 40),

                                IconButton(
                                onPressed:(){
                                  setState(() {
                                    peso -=1;
                                  });
                                },
                                icon: Icon(Icons.remove_circle),iconSize: 40)
                              ],

                          )
                        ],

                    ),

                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 112, 112),
                        borderRadius: BorderRadius.circular(20.0)),
                    //color: Color.fromARGB(255, 114, 112, 112),
                  ),
                )),
                Expanded(
                     child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text("Edad"),
                            Text(edad.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                onPressed: (){
                                  setState(() {
                                    edad +=1;
                                  });
                                },
                                icon: Icon(Icons.add_circle,),iconSize: 40),

                                IconButton(
                                onPressed:(){
                                  setState(() {
                                    edad -=1;
                                  });
                                },
                                icon: Icon(Icons.remove_circle),iconSize: 40)
                              ],

                          )
                        ],

                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 112, 112),
                        borderRadius: BorderRadius.circular(20.0)),
                    //color: Color.fromARGB(255, 114, 112, 112),
                  ),
                )),
                
               
              ],
            ),
          )),
           GestureDetector(
            onTap: (){
              double valorCalculo = peso / (estatura * estatura);
              String estado = "";
              Color colorEstado= Colors.black;

              if(valorCalculo < 18.5){
                estado = "Bajo Peso";
                colorEstado = Colors.orange;

              }

              if(valorCalculo > 18.5 && valorCalculo <=24.9){
                estado="Normal";
                colorEstado = Colors.green;
              }

              Navigator.push(context,MaterialPageRoute(builder: ((context) => DetallePage(valor: valorCalculo,estado: estado, colorEstado: colorEstado,))));
            },
           
 child: Container(
              height: 100,
              color: Color.fromARGB(255, 218, 64, 64),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Calcular",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}