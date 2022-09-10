import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double peso =0.0;
  int edad = 0;
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
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DetallePage())));
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