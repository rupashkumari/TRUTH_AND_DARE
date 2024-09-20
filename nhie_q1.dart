import 'package:flutter/material.dart';
import 'package:truth/nhie_q2.dart';

class NhieQ1 extends StatelessWidget {
  const NhieQ1({Key? key}) : super(key:key);
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: getAppBar(),
    body: getBody(context),
       backgroundColor: const Color.fromARGB(255, 250, 203, 203),
   );
     } 

    Container getBody(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.height ,
      height: MediaQuery.of(context).size.height ,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(

           width: MediaQuery.of(context).size.width/1.2 ,
           height: 250,
            child: const Center(
                              child: Text(
                                'Never have I ever told\n someone “I love you”\n  without meaning it.',
                                style: TextStyle(color: Color.fromARGB(255, 8, 0, 0),fontSize: 25,fontStyle: FontStyle.italic),
                                )
                                ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(10),
           ),
       
          ),
       const  SizedBox(
          height: 70,
        ) , 
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
              ]
          ),
           GestureDetector(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const NhieQ2())) ,
                child:
                 Container(
                    decoration: BoxDecoration(
                      color:  const Color.fromRGBO(229, 121, 114, 1),
                       borderRadius: BorderRadius.circular(20),
                    ),
                   width: (MediaQuery.of(context).size.width/2)-35 ,
                             height: 50, 
                             child: const Center(
                              child: Text(
                                'NEXT',
                                style: TextStyle(color: Colors.black,fontSize: 20),
                                )
                                ), 
                  ),
           ),
              ],
                             
       
             ),
    );
          
        
    
  

   
    
  }
  
  getAppBar() {
     return AppBar(
      backgroundColor: const Color.fromRGBO(229, 121, 114, 1),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text('NEVER HAVE I EVER'),
      centerTitle: true,
    );
  }
}